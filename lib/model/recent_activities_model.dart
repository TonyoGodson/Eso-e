class RecentActivities{

  final String activity;
  final String? surname;
  final String? firstname;
  final String? days_date;

  const RecentActivities({
    required this.activity,
    required this.surname,
    required this.firstname,
    required this.days_date,
});
  static const List<RecentActivities> recentActivity = [
    RecentActivities(
        activity: 'Client Created',
        surname: 'Okpala',
        firstname: 'Kamsi',
        days_date: '2 days ago'
    ),
    RecentActivities(
        activity: 'Lead Created',
        surname: 'Layo',
        firstname: 'Solana',
        days_date: '14 May, 2023'
    ),
    RecentActivities(
        activity: 'Loan Booked',
        surname: 'Seun',
        firstname: 'Ayoola',
        days_date: '18 Nov 2022'
    ),
    RecentActivities(
        activity: 'Loan Disbursed',
        surname: 'Alfred',
        firstname: 'Wilson',
        days_date: '8 May, 2023'
    ),
    RecentActivities(
        activity: 'Client Created',
        surname: 'Chibuzor',
        firstname: 'Nkechi',
        days_date: 'Yesterday'
    ),
    RecentActivities(
        activity: 'Lead Created',
        surname: 'Garba',
        firstname: 'Danladi',
        days_date: '4 days ago'
    ),
    RecentActivities(
        activity: 'Loan Disbursed',
        surname: 'Osahon',
        firstname: 'Omogiade',
        days_date: '11 Feb 2023'
    ),
    RecentActivities(
        activity: 'Loan Booked',
        surname: 'Tega',
        firstname: 'Omokaro',
        days_date: '27 Mar 2023'
    ),
  ];


}