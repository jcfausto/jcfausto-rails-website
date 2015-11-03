###
AboutList React Component
Released under the MIT License
Date: 10-26-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@AboutList = React.createClass
  getInitialState: ->
    about_items: this.props.about_items

  render: ->
    `<section>

        <h3><span>About Me</span></h3>

        <ul className="paragraphs">
          {this.state.about_items.map(
             function(about, index){
               return (<AboutItem key={index} title={about.title} description={about.description} order={about.order} />)
             }, this)
          }
        </ul>

      </section>`
