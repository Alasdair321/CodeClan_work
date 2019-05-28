import React, {Component} from 'react';

class PiggyBank extends Component {
    constructor(props){
        super(props);
        this.state = {
            balancePounds: 0
        };
        this.depositPound = this.depositPound.bind(this);
        this.withdraw = this.withdraw.bind(this);
    }

    depositPound(){
        this.setState({ balancePounds: this.state.balancePounds + this.props.amount});
    }

    withdraw(){
        if (this.state.balancePounds >= this.props.amount) {
            this.setState({ balancePounds: this.state.balancePounds - this.props.amount})
        }
    }

    render(){
       return(
           <div>
                <h1>{this.props.title}</h1>
                <p>Balance: £{this.state.balancePounds}</p>
                <button onClick={this.depositPound}>Deposit £{this.props.amount}</button>
                <button onClick={this.withdraw}>Withdraw £{this.props.amount}</button>
           </div>
            
       ); 
    }
}

export default PiggyBank;