require 'rest-client'

def blog_post_positive(post)
  payload = {
      'content' => post.content,
      'title' =>  post.title
  }.to_json

  response = API.post('http://195.13.194.180:8090/api/post',
                      headers: {'Content-Type' => 'application/json',
                      'Authorization' => post.author.auth_token},
                      cookies: {},
                      payload: payload)

  # Check if 200 OK is received
  assert_status_code(200, response, "Blog post.")

  p response

end

def check_if_blog_added(post)

  response = API.get('http://195.13.194.180:8090/api/profile',
                     headers: {'Authorization' => post.author.auth_token},
                     cookies: {})

  # Check if 200 OK is received
  assert_status_code(200, response, "Check blog fail.")
end