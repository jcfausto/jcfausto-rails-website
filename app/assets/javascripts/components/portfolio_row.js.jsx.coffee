###
PortfolioRow React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@PortfolioRow = React.createClass
  getInitialState: ->
    row: this.props.row

  render: ->
    `<div key={this.state.key} className="row">
      {
        this.state.row.map(function(project, index){
          return (<PortfolioItem key={index} name={project.name} url={project.url} order={project.order} image_url={project.image_file_name} />)
        })
      }
     </div>
    `
