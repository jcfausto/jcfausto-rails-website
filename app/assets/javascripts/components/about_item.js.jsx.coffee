###
AboutItem React Component
Released under the MIT License
Date: 10-26-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@AboutItem = React.createClass
  getInitialState: ->
    title: this.props.title
    description: this.props.description
    order: this.props.order

  #I am using the raw html here because one could create anchors inside
  #about description and in order to this work it was necessary to output
  #the raw value of this property.
  render: ->
    `<li>
      <p>
        <span>{this.state.title}</span>
        <span dangerouslySetInnerHTML={{__html: this.state.description}} />
      </p>
    </li>`
