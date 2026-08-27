enum Currency {
  cny('CNY'),
  usd('USD');

  const Currency(this.code);

  final String code;
}

enum LedgerType { personal, family, business, custom }

enum AccountType { wallet, bank, creditCard, cash, other }

enum RawDirection { inflow, outflow, neutral, unknown }

enum TransactionNature {
  expense,
  income,
  transfer,
  refund,
  reimbursement,
  loanOut,
  loanIn,
  loanRepayment,
  other,
}

enum ClassificationStatus { confirmed, suggested, pending }

enum ClassificationSource { manual, rule, system, llm, none }
