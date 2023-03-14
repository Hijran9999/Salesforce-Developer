import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {
fruits = ['Orange', 'Apple'];
    clickHandler(){

        const headerElement = this.template.querySelector('h1');
        console.log(headerElement.innerText);
        headerElement.style.color = 'blue';
        headerElement.style.backgroundColor = 'red';
        headerElement.style.border = '3px solid green';
    

        const parel = this.template.querySelector('p');
        console.log(parel.innerText);

        parel.style.color = 'yellow';
        parel.style.backgroundColor= 'blue';
        parel.style.border='3px dotted brown';

         const  divel = this.template.querySelectorAll('div.child');
         console.log(divel);
         divel.forEach(item=> {
            console.log(item.innerText);
            //item.innerText.style.color='blue';n
            item.setAttribute("class","slds-align_absolute-center");
         });
    
}
}