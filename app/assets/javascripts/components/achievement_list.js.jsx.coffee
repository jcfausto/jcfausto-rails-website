###
AchievementList React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@AchievementList = React.createClass
  getInitialState: ->
    achievement_items: this.props.achievements

  render: ->
    `<section>

        <h3><span>Some Achievements This Year</span></h3>

        <ul className="achievements">
          {this.state.achievement_items.map(
             function(achievement, index){
               return (<AchievementItem key={index} when={achievement.when} what={achievement.what} />)
             }, this)
          }
        </ul>

      </section>`
