###
Post React Component
Released under the MIT License
Date: 08-02-2017
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@Post = React.createClass
  getInitialState: ->
    title: this.props.title
    excerpt: this.props.excerpt
    
  render: ->
   `<div>
   		<h1>{this.state.title}</h1>
      <p dangerouslySetInnerHTML={{__html: this.state.excerpt}} />
      <hr/>
    </div>`
