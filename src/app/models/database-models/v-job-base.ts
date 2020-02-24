import { prop,propObject,propArray,required,maxLength,range  } from "@rxweb/reactive-form-validators"
import { gridColumn } from "@rxweb/grid"


export class vJobBase {

//#region companyName Prop
        @gridColumn({visible: true, columnIndex:1, allowSorting: true, headerKey: 'companyName', keyColumn: false})
        companyName : string;
//#endregion companyName Prop


//#region companyContact Prop
        @gridColumn({visible: true, columnIndex:2, allowSorting: true, headerKey: 'companyContact', keyColumn: false})
        companyContact : string;
//#endregion companyContact Prop


//#region companyLocation Prop
        @gridColumn({visible: true, columnIndex:3, allowSorting: true, headerKey: 'companyLocation', keyColumn: false})
        companyLocation : string;
//#endregion companyLocation Prop


//#region jobLocationName Prop
        @gridColumn({visible: true, columnIndex:4, allowSorting: true, headerKey: 'jobLocationName', keyColumn: false})
        jobLocationName : string;
//#endregion jobLocationName Prop


//#region jobId Prop
        @gridColumn({visible: true, columnIndex:5, allowSorting: true, headerKey: 'jobId', keyColumn: true})
        jobId : number;
//#endregion jobId Prop


//#region jobTitle Prop
        @gridColumn({visible: true, columnIndex:6, allowSorting: true, headerKey: 'jobTitle', keyColumn: false})
        jobTitle : string;
//#endregion jobTitle Prop


//#region jobDescription Prop
        @gridColumn({visible: true, columnIndex:7, allowSorting: true, headerKey: 'jobDescription', keyColumn: false})
        jobDescription : string;
//#endregion jobDescription Prop


//#region jobDesignation Prop
        @gridColumn({visible: true, columnIndex:8, allowSorting: true, headerKey: 'jobDesignation', keyColumn: false})
        jobDesignation : string;
//#endregion jobDesignation Prop


//#region payScale Prop
        @gridColumn({visible: true, columnIndex:9, allowSorting: true, headerKey: 'payScale', keyColumn: false})
        payScale : string;
//#endregion payScale Prop


//#region jobType Prop
        @gridColumn({visible: true, columnIndex:10, allowSorting: true, headerKey: 'jobType', keyColumn: false})
        jobType : string;
//#endregion jobType Prop


//#region jobApplyLink Prop
        @gridColumn({visible: true, columnIndex:11, allowSorting: true, headerKey: 'jobApplyLink', keyColumn: false})
        jobApplyLink : string;
//#endregion jobApplyLink Prop


//#region jobTagName Prop
        @gridColumn({visible: true, columnIndex:12, allowSorting: true, headerKey: 'jobTagName', keyColumn: false})
        jobTagName : string;
//#endregion jobTagName Prop

}