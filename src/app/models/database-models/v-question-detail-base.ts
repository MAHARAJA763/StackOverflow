import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vQuestionDetailBase {

//#region questionId Prop
        @gridColumn({visible: true, columnIndex:0, allowSorting: true, headerKey: 'questionId', keyColumn: true})
        questionId : number;
//#endregion questionId Prop


//#region answerId Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'answerId', keyColumn: false})
        answerId : number;
//#endregion answerId Prop


//#region answerBody Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'answerBody', keyColumn: false})
        answerBody : string;
//#endregion answerBody Prop


//#region answerDateTime Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'answerDateTime', keyColumn: false})
        answerDateTime : any;
//#endregion answerDateTime Prop


//#region answerAuthorId Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'answerAuthorId', keyColumn: false})
        answerAuthorId : number;
//#endregion answerAuthorId Prop


//#region isAnswerAccepted Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'isAnswerAccepted', keyColumn: false})
        isAnswerAccepted : any;
//#endregion isAnswerAccepted Prop


//#region answerUpVote Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'answerUpVote', keyColumn: false})
        answerUpVote : number;
//#endregion answerUpVote Prop


//#region answerDownVote Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'answerDownVote', keyColumn: false})
        answerDownVote : number;
//#endregion answerDownVote Prop


//#region questionTitle Prop
        @gridColumn({visible: true, columnIndex:8, allowSorting: true, headerKey: 'questionTitle', keyColumn: false})
        questionTitle : string;
//#endregion questionTitle Prop


//#region questionBody Prop
        @gridColumn({visible: true, columnIndex:9, allowSorting: true, headerKey: 'questionBody', keyColumn: false})
        questionBody : string;
//#endregion questionBody Prop


//#region questionDateTime Prop
        @gridColumn({visible: true, columnIndex:10, allowSorting: true, headerKey: 'questionDateTime', keyColumn: false})
        questionDateTime : any;
//#endregion questionDateTime Prop


//#region questionAuthorId Prop
        @gridColumn({visible: true, columnIndex:11, allowSorting: true, headerKey: 'questionAuthorId', keyColumn: false})
        questionAuthorId : number;
//#endregion questionAuthorId Prop


//#region questionUpVote Prop
        @gridColumn({visible: true, columnIndex:12, allowSorting: true, headerKey: 'questionUpVote', keyColumn: false})
        questionUpVote : any;
//#endregion questionUpVote Prop


//#region questionDownVote Prop
        @gridColumn({visible: true, columnIndex:13, allowSorting: true, headerKey: 'questionDownVote', keyColumn: false})
        questionDownVote : any;
//#endregion questionDownVote Prop


//#region userId Prop
        @gridColumn({visible: true, columnIndex:14, allowSorting: true, headerKey: 'userId', keyColumn: false})
        userId : number;
//#endregion userId Prop


//#region displayName Prop
        @gridColumn({visible: true, columnIndex:15, allowSorting: true, headerKey: 'displayName', keyColumn: false})
        displayName : string;
//#endregion displayName Prop

}