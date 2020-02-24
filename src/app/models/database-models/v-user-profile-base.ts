import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vUserProfileBase {

//#region userId Prop
        @gridColumn({visible: true, columnIndex:0, allowSorting: true, headerKey: 'userId', keyColumn: true})
        userId : number;
//#endregion userId Prop


//#region displayName Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'displayName', keyColumn: false})
        displayName : string;
//#endregion displayName Prop


//#region email Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'email', keyColumn: false})
        email : string;
//#endregion email Prop


//#region aboutMe Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'aboutMe', keyColumn: false})
        aboutMe : string;
//#endregion aboutMe Prop


//#region location Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'location', keyColumn: false})
        location : string;
//#endregion location Prop


//#region websitLink Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'websitLink', keyColumn: false})
        websitLink : string;
//#endregion websitLink Prop


//#region twitterUserName Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'twitterUserName', keyColumn: false})
        twitterUserName : string;
//#endregion twitterUserName Prop


//#region githubUsername Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'githubUsername', keyColumn: false})
        githubUsername : string;
//#endregion githubUsername Prop


//#region score Prop
        @gridColumn({visible: true, columnIndex:8, allowSorting: true, headerKey: 'score', keyColumn: false})
        score : any;
//#endregion score Prop


//#region reputation Prop
        @gridColumn({visible: true, columnIndex:9, allowSorting: true, headerKey: 'reputation', keyColumn: false})
        reputation : any;
//#endregion reputation Prop


//#region profileImage Prop
        @gridColumn({visible: true, columnIndex:10, allowSorting: true, headerKey: 'profileImage', keyColumn: false})
        profileImage : string;
//#endregion profileImage Prop

}