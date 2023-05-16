<?php
header('Access-Control-Allow-Origin: http://localhost:3000');
header('Access-Control-Allow-Headers: Content-Type');
// connecting to the database
$conn = new mysqli("localhost", "root", "", "bot") or die("Database Error");

// getting user message through AJAX
$getMesg = $_POST['text'];


// Mapping user messages to specific keywords
$keywords = array(
    'course' => 'Courses',
    'selected' => 'Selections',
    'material' => 'Materials',
    'blog' => 'Blogs',
    'team' => 'Teams',
    'contact' => 'Contact Us',
    'help' => 'help',
    'login' => 'Login',
    'iiser' => 'IISER',
    'iit-jam' => 'IIT-JAM',
    'iat' => 'IAT',
    'nest' => 'NEST',
    'iisc' => 'IISC',
    'isi' => 'ISI',
    'iacs' => 'IACS',
    'cuet' => 'CUET',
    'icar' => 'ICAR',
);

// Check if user message contains any keyword
$matchedKeyword = $getMesg;
foreach ($keywords as $keyword => $value) {
    if (strpos(strtolower($getMesg), $keyword) !== false) {
        $matchedKeyword = $value;
        break;
    }
}

// Check user query in the database
$check_data = "SELECT replies, links FROM chatbot WHERE queries LIKE '%$matchedKeyword%'";
$run_query = mysqli_query($conn, $check_data);

// if user query matched to database query, retrieve the reply and link
if (mysqli_num_rows($run_query) > 0) {
    $fetch_data = mysqli_fetch_assoc($run_query);
    $reply = $fetch_data['replies'];
    $link = $fetch_data['links'];
    $response = array(
        'reply' =>  $reply,
        'link' => $link
    );
} else {
    $response = array(
        'reply' => "Sorry, I can't understand you!",
        'link' => null
    );
}
// Send the JSON response
header('Content-Type: application/json');
echo json_encode($response);
?>