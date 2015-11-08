###
SkillList React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@SkillList = React.createClass
  getInitialState: ->
    skill_items: this.props.skill_items

  render: ->
    `<section>

      <h3><span>Skills</span></h3>

      <ul className="paragraphs">
        {this.state.skill_items.map(
          function(skill, index){
            return (<SkillItem key={index} title={skill.title} description={skill.description} order={skill.order} />)
          }, this)
        }
      </ul>

      </section>`
