###
Portfolio React Component
Released under the MIT License
Date: 11-08-2015
Author: Julio Cesar Fausto
Source: https://github.com/jcfausto/jcfausto-com-rails
###

@Portfolio = React.createClass
  getInitialState: ->
    portfolio_items: this.props.portfolio_items
    #The portfolio is composed of rows with 2 items each. Will be necessary to
    #pre-process the portfolio_items in order to produce rows with 2 items.
    #Those rows will turn rendering easier
    rows: []

  #This method mount an array of array representing rows where each
  #one have no more than 2 items
  mountRows: ->
    temp_items = this.state.portfolio_items
    this.state.rows.push(temp_items.splice(0, 2)) while temp_items.length

  render: ->
    this.mountRows()

    `<section className="inverted">

      <h3><span>Portfolio</span></h3>

      {this.state.rows.map(function(row, index){
          return (<PortfolioRow key={index} row={row} />)
        })
      }

      </section>`
