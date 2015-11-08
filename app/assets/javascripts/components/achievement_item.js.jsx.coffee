###
AchievementItem React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@AchievementItem = React.createClass
  getInitialState: ->
    when: this.props.when
    what: this.props.what

  logWhen: ->
    console.log("abacaxi")

  #I am using the raw html here because one could create anchors inside
  #the what and in order to this work it was necessary to output
  #the raw value of this property.
  #using this library http://momentjs.com/, loaded through vendor assets
  render: ->
   `<li>
      <p>{moment(this.state.when).format("MMMM Do YYYY")}</p>
      <p dangerouslySetInnerHTML={{__html: this.state.what}} />
    </li>`

