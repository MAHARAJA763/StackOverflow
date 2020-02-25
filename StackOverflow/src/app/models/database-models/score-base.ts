import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class ScoreBase {

//#region scoreId Prop
        @prop()
        scoreId : number;
//#endregion scoreId Prop


//#region score Prop
        @prop()
        score : number;
//#endregion score Prop


//#region userId Prop
        @range({minimumNumber:1,maximumNumber:2147483647})
        @required()
        userId : number;
//#endregion userId Prop



}