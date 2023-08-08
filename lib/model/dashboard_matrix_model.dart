class DashboardMatrix{
   final int totalCustomer;
   final int totalLeads;
   final int totalTickets;
   final int overduePayment;
   final int kpiScore;
   final int referrals;
   final int loans;
   final int customers;
   final int undisbursed;

   const DashboardMatrix({
      required this.totalCustomer,
      required this.totalLeads,
      required this.totalTickets,
      required this.overduePayment,
      required this.kpiScore,
      required this.referrals,
      required this.loans,
      required this.customers,
      required this.undisbursed
   });
   static const List<DashboardMatrix> dashboardMatrix = [
      DashboardMatrix(
          totalCustomer: 208,
          totalLeads: 702,
          totalTickets: 702,
          overduePayment: 25000,
          kpiScore: 687,
          referrals: 96,
          loans: 100,
          customers: 702,
          undisbursed: 500
      )];
}