import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vQuestionBase {

//#region questionId Prop
        @gridColumn({visible: true, columnIndex:0, allowSorting: true, headerKey: 'questionId', keyColumn: true})
        questionId : number;
//#endregion questionId Prop


//#region questionTitle Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'questionTitle', keyColumn: false})
        questionTitle : string;
//#endregion questionTitle Prop


//#region questionBody Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'questionBody', keyColumn: false})
        questionBody : string;
//#endregion questionBody Prop


//#region questionDateTime Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'questionDateTime', keyColumn: false})
        questionDateTime : any;
//#endregion questionDateTime Prop


//#region displayName Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'displayName', keyColumn: false})
        displayName : string;
//#endregion displayName Prop


//#region questionTagId Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'questionTagId', keyColumn: false})
        questionTagId : number;
//#endregion questionTagId Prop


//#region questionUpVote Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'questionUpVote', keyColumn: false})
        questionUpVote : any;
//#endregion questionUpVote Prop


//#region questionDownVote Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'questionDownVote', keyColumn: false})
        questionDownVote : any;
//#endregion questionDownVote Prop

}