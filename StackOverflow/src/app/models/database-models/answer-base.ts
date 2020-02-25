import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class AnswerBase {

//#region answerId Prop
        @prop()
        answerId : number;
//#endregion answerId Prop


//#region questionId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        questionId : number;
//#endregion questionId Prop


//#region answerBody Prop
        @required()
        answerBody : string;
//#endregion answerBody Prop


//#region answerDateTime Prop
        @required()
        answerDateTime : any;
//#endregion answerDateTime Prop


//#region answerAuthorId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        answerAuthorId : number;
//#endregion answerAuthorId Prop


//#region isAnswerAccepted Prop
        @prop()
        isAnswerAccepted : boolean;
//#endregion isAnswerAccepted Prop







}