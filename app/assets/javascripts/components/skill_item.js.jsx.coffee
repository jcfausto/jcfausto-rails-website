###
SkillItem React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@SkillItem = React.createClass
  getInitialState: ->
    title: this.props.title
    description: this.props.description
    order: this.props.order

  render: ->
   `<li>
      <p>
        <span>{this.state.title}</span>
        <span>{this.state.description}</span>
      </p>
   </li>`
