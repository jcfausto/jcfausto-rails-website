###
PostlList React Component
Released under the MIT License
Date: 08-02-2017
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@PostList = React.createClass
  getInitialState: ->
    posts: this.props.posts

  render: ->
    `<section className="posts">

      <ul className="post-list">
        {this.state.posts.map(
          function(post, index){
            return (<Post key={index} title={post.title} excerpt={post.body} />)
          }, this)
        }
      </ul>

    </section>`
