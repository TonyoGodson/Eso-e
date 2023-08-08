


import '../utils/utils.dart';

class LeadListModel{
  final String? firstname;
  final String? surname;
  final String? phone;
  final int? status;
  final String? acct_type;
  final String? pic;
  final String? customer_type;
  final String? activatn_date;
  final String? acct_officer;
  final String? customer_id;

  LeadListModel({
    this.firstname,
    this.surname,
    this.phone,
    this.status,
    this.acct_type,
    this.pic,
    this.customer_type,
    this.activatn_date,
    this.acct_officer,
    this.customer_id
  });

  static List<LeadListModel> oneLead = [
    LeadListModel(
        firstname: "Paul",
        surname: "Regan",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/pics/garfield.png",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Clara",
        surname: "Ojukwo",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/pics/lade.png",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Timothy",
        surname: "Exodus",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Andrew",
        surname: "Samson",
        phone: "08012341234",
        status: Utils.status() , /*Utils.clientStatus > 0 ? "Active" : "Dormant"*/
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/png_icons/timothy.png",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Stelina",
        surname: "Idahosa",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/pics/anna.png",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Timothy",
        surname: "Exodus",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/pics/olapng.png",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Stelina",
        surname: "Idahosa",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "asset/pics/kome.png",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Paul",
        surname: "Regan",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Clara",
        surname: "Ojukwo",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Stelina",
        surname: "Idahosa",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Paul",
        surname: "Regan",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Clara",
        surname: "Ojukwo",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Timothy",
        surname: "Exodus",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Stelina",
        surname: "Idahosa",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
    LeadListModel(
        firstname: "Paul",
        surname: "Regan",
        phone: "08012341234",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "27 Nov, 2023",
        acct_officer: "Martin Joe",
        customer_id: "ES24432"
    ),
    LeadListModel(
        firstname: "Clara",
        surname: "Ojukwo",
        phone: "09034568765",
        status: Utils.status(),
        acct_type: Utils.status() > 0 ? "individual" : "corporate",
        pic: "pic",
        customer_type: "State",
        activatn_date: "02 Jun, 2022",
        acct_officer: "Elizabeth Omowunmi",
        customer_id: "PK19407"
    ),
  ];
}