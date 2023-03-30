//
//  File.swift
//  countryApi
//
//  Created by R82 on 30/03/23.
//

import Foundation
struct WelcomeElement: Codable {
    let name: Name
    let tld: [String]?
    let cca2: String
    let ccn3: String?
    let cca3: String
    let cioc: String?
    let independent: Bool?
    let status: Status
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital: [String]?
    let altSpellings: [String]
    let region: Region
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let area: Double
    let demonyms: Demonyms?
    let flag: String
    let maps: Maps
    let population: Int
    let fifa: String?
    let car: Car
    let timezones: [String]
    let continents: [Continent]
    let flags: Flags
    let coatOfArms: CoatOfArms
    let startOfWeek: StartOfWeek
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
    let borders: [String]?
    let gini: [String: Double]?
}

// MARK: - CapitalInfo
struct CapitalInfo: Codable {
    let latlng: [Double]?
}

// MARK: - Car
struct Car: Codable {
    let signs: [String]?
    let side: Side
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

// MARK: - CoatOfArms
struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

// MARK: - Currencies
struct Currencies: Codable {
    let bbd, eur, srd, nad: Aed?
    let zar, gnf, vuv, wst: Aed?
    let azn, mvr, xpf, xcd: Aed?
    let pab, usd, mkd, dkk: Aed?
    let egp, czk, bsd, uyu: Aed?
    let kmf, ckd, nzd, crc: Aed?
    let xof, stn, hkd, aud: Aed?
    let myr, npr, cuc, cup: Aed?
    let kpw, mdl, zmw, top: Aed?
    let pen, cve, kid, pkr: Aed?
    let djf, kgs, chf, kwd: Aed?
    let scr, gbp, fjd, yer: Aed?
    let xaf, ang, ars, mga: Aed?
    let zwl, ggp, ron, bdt: Aed?
    let jod, mzn, ils, ern: Aed?
    let idr, imp, jpy, afn: Aed?
    let aed, mwk, currenciesTRY, byn: Aed?
    let bam: BAM?
    let szl, tmt, etb, huf: Aed?
    let ngn, uah, htg, bwp: Aed?
    let gyd, mur, gip, isk: Aed?
    let nok, clp, kzt, cny: Aed?
    let mop, amd, bob: Aed?
    let sdg: BAM?
    let vnd, bif, cad, cop: Aed?
    let lsl, bmd, gtq, uzs: Aed?
    let kyd, gmd, tvd, btn: Aed?
    let inr, awg, pyg, pgk: Aed?
    let jmd, pln, rub, mru: Aed?
    let dzd, mad, cdf, ugx: Aed?
    let mnt, lak, bnd, sgd: Aed?
    let kes, lkr, dop, gel: Aed?
    let thb, nio, qar, twd: Aed?
    let brl, syp, bzd, fkp: Aed?
    let ves, bhd, aoa, tnd: Aed?
    let rwf, ttd, mxn, krw: Aed?
    let all, sos, lrd, mmk: Aed?
    let tzs, iqd, shp, lyd: Aed?
    let sll, rsd, ghs, ssp: Aed?
    let sek, fok, php, sar: Aed?
    let bgn, khr, jep, irr: Aed?
    let tjs, omr, lbp, sbd: Aed?
    let hnl: Aed?

    enum CodingKeys: String, CodingKey {
        case bbd = "BBD"
        case eur = "EUR"
        case srd = "SRD"
        case nad = "NAD"
        case zar = "ZAR"
        case gnf = "GNF"
        case vuv = "VUV"
        case wst = "WST"
        case azn = "AZN"
        case mvr = "MVR"
        case xpf = "XPF"
        case xcd = "XCD"
        case pab = "PAB"
        case usd = "USD"
        case mkd = "MKD"
        case dkk = "DKK"
        case egp = "EGP"
        case czk = "CZK"
        case bsd = "BSD"
        case uyu = "UYU"
        case kmf = "KMF"
        case ckd = "CKD"
        case nzd = "NZD"
        case crc = "CRC"
        case xof = "XOF"
        case stn = "STN"
        case hkd = "HKD"
        case aud = "AUD"
        case myr = "MYR"
        case npr = "NPR"
        case cuc = "CUC"
        case cup = "CUP"
        case kpw = "KPW"
        case mdl = "MDL"
        case zmw = "ZMW"
        case top = "TOP"
        case pen = "PEN"
        case cve = "CVE"
        case kid = "KID"
        case pkr = "PKR"
        case djf = "DJF"
        case kgs = "KGS"
        case chf = "CHF"
        case kwd = "KWD"
        case scr = "SCR"
        case gbp = "GBP"
        case fjd = "FJD"
        case yer = "YER"
        case xaf = "XAF"
        case ang = "ANG"
        case ars = "ARS"
        case mga = "MGA"
        case zwl = "ZWL"
        case ggp = "GGP"
        case ron = "RON"
        case bdt = "BDT"
        case jod = "JOD"
        case mzn = "MZN"
        case ils = "ILS"
        case ern = "ERN"
        case idr = "IDR"
        case imp = "IMP"
        case jpy = "JPY"
        case afn = "AFN"
        case aed = "AED"
        case mwk = "MWK"
        case currenciesTRY = "TRY"
        case byn = "BYN"
        case bam = "BAM"
        case szl = "SZL"
        case tmt = "TMT"
        case etb = "ETB"
        case huf = "HUF"
        case ngn = "NGN"
        case uah = "UAH"
        case htg = "HTG"
        case bwp = "BWP"
        case gyd = "GYD"
        case mur = "MUR"
        case gip = "GIP"
        case isk = "ISK"
        case nok = "NOK"
        case clp = "CLP"
        case kzt = "KZT"
        case cny = "CNY"
        case mop = "MOP"
        case amd = "AMD"
        case bob = "BOB"
        case sdg = "SDG"
        case vnd = "VND"
        case bif = "BIF"
        case cad = "CAD"
        case cop = "COP"
        case lsl = "LSL"
        case bmd = "BMD"
        case gtq = "GTQ"
        case uzs = "UZS"
        case kyd = "KYD"
        case gmd = "GMD"
        case tvd = "TVD"
        case btn = "BTN"
        case inr = "INR"
        case awg = "AWG"
        case pyg = "PYG"
        case pgk = "PGK"
        case jmd = "JMD"
        case pln = "PLN"
        case rub = "RUB"
        case mru = "MRU"
        case dzd = "DZD"
        case mad = "MAD"
        case cdf = "CDF"
        case ugx = "UGX"
        case mnt = "MNT"
        case lak = "LAK"
        case bnd = "BND"
        case sgd = "SGD"
        case kes = "KES"
        case lkr = "LKR"
        case dop = "DOP"
        case gel = "GEL"
        case thb = "THB"
        case nio = "NIO"
        case qar = "QAR"
        case twd = "TWD"
        case brl = "BRL"
        case syp = "SYP"
        case bzd = "BZD"
        case fkp = "FKP"
        case ves = "VES"
        case bhd = "BHD"
        case aoa = "AOA"
        case tnd = "TND"
        case rwf = "RWF"
        case ttd = "TTD"
        case mxn = "MXN"
        case krw = "KRW"
        case all = "ALL"
        case sos = "SOS"
        case lrd = "LRD"
        case mmk = "MMK"
        case tzs = "TZS"
        case iqd = "IQD"
        case shp = "SHP"
        case lyd = "LYD"
        case sll = "SLL"
        case rsd = "RSD"
        case ghs = "GHS"
        case ssp = "SSP"
        case sek = "SEK"
        case fok = "FOK"
        case php = "PHP"
        case sar = "SAR"
        case bgn = "BGN"
        case khr = "KHR"
        case jep = "JEP"
        case irr = "IRR"
        case tjs = "TJS"
        case omr = "OMR"
        case lbp = "LBP"
        case sbd = "SBD"
        case hnl = "HNL"
    }
}

// MARK: - Aed
struct Aed: Codable {
    let name, symbol: String
}

// MARK: - BAM
struct BAM: Codable {
    let name: String
}

// MARK: - Demonyms
struct Demonyms: Codable {
    let eng: Eng
    let fra: Eng?
}

// MARK: - Eng
struct Eng: Codable {
    let f, m: String
}

// MARK: - Flags
struct Flags: Codable {
    let png: String
    let svg: String
    let alt: String?
}

// MARK: - Idd
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

// MARK: - Maps
struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

// MARK: - Name
struct Name: Codable {
    let common, official: String
    let nativeName: [String: Translation]?
}

// MARK: - Translation
struct Translation: Codable {
    let official, common: String
}

// MARK: - PostalCode
struct PostalCode: Codable {
    let format: String
    let regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case saturday = "saturday"
    case sunday = "sunday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}
