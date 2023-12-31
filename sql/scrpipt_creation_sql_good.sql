-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema stock
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema stock
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `stock` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `stock` ;

-- -----------------------------------------------------
-- Table `stock`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`companies` (
  `name` TEXT NULL DEFAULT NULL,
  `enterprise_id` BIGINT NOT NULL,
  PRIMARY KEY (`enterprise_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`years`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`years` (
  `years` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NOT NULL,
  PRIMARY KEY (`year_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`balance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`balance` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `cash_and_cash_equivalents` DOUBLE NULL DEFAULT NULL,
  `marketable_securities` DOUBLE NULL DEFAULT NULL,
  `cash,_cash_equivalents,_marketable_securities` DOUBLE NULL DEFAULT NULL,
  `accounts_receivable` DOUBLE NULL DEFAULT NULL,
  `notes_receivable` DOUBLE NULL DEFAULT NULL,
  `loans_receivable` DOUBLE NULL DEFAULT NULL,
  `other_current_receivables` DOUBLE NULL DEFAULT NULL,
  `total_receivables` DOUBLE NULL DEFAULT NULL,
  `inventories,_raw_materials_&_components` DOUBLE NULL DEFAULT NULL,
  `inventories,_work_in_process` DOUBLE NULL DEFAULT NULL,
  `inventories,_inventories_adjustments` DOUBLE NULL DEFAULT NULL,
  `inventories,_finished_goods` DOUBLE NULL DEFAULT NULL,
  `inventories,_other` DOUBLE NULL DEFAULT NULL,
  `total_inventories` DOUBLE NULL DEFAULT NULL,
  `other_current_assets` DOUBLE NULL DEFAULT NULL,
  `total_current_assets` DOUBLE NULL DEFAULT NULL,
  `investments_and_advances` DOUBLE NULL DEFAULT NULL,
  `land_and_improvements` DOUBLE NULL DEFAULT NULL,
  `buildings_and_improvements` DOUBLE NULL DEFAULT NULL,
  `machinery,_furniture,_equipment` DOUBLE NULL DEFAULT NULL,
  `construction_in_progress` DOUBLE NULL DEFAULT NULL,
  `other_gross_ppe` DOUBLE NULL DEFAULT NULL,
  `gross_property,_plant_and_equipment` DOUBLE NULL DEFAULT NULL,
  `accumulated_depreciation` DOUBLE NULL DEFAULT NULL,
  `property,_plant_and_equipment` DOUBLE NULL DEFAULT NULL,
  `intangible_assets` DOUBLE NULL DEFAULT NULL,
  `goodwill` DOUBLE NULL DEFAULT NULL,
  `other_long_term_assets` DOUBLE NULL DEFAULT NULL,
  `total_long-term_assets` DOUBLE NULL DEFAULT NULL,
  `total_assets` DOUBLE NULL DEFAULT NULL,
  `accounts_payable` DOUBLE NULL DEFAULT NULL,
  `total_tax_payable` DOUBLE NULL DEFAULT NULL,
  `other_current_payables` DOUBLE NULL DEFAULT NULL,
  `current_accrued_expense` DOUBLE NULL DEFAULT NULL,
  `accounts_payable_&_accrued_expense` DOUBLE NULL DEFAULT NULL,
  `short-term_debt` DOUBLE NULL DEFAULT NULL,
  `short-term_capital_lease_obligation` DOUBLE NULL DEFAULT NULL,
  `short-term_debt_&_capital_lease_obligation` DOUBLE NULL DEFAULT NULL,
  `current_deferred_revenue` DOUBLE NULL DEFAULT NULL,
  `current_deferred_taxes_liabilities` DOUBLE NULL DEFAULT NULL,
  `deferred_tax_and_revenue` DOUBLE NULL DEFAULT NULL,
  `other_current_liabilities` DOUBLE NULL DEFAULT NULL,
  `total_current_liabilities` DOUBLE NULL DEFAULT NULL,
  `long-term_debt` DOUBLE NULL DEFAULT NULL,
  `long-term_capital_lease_obligation` DOUBLE NULL DEFAULT NULL,
  `long-term_debt_&_capital_lease_obligation` DOUBLE NULL DEFAULT NULL,
  `debt-to-equity` DOUBLE NULL DEFAULT NULL,
  `pension_and_retirement_benefit` DOUBLE NULL DEFAULT NULL,
  `noncurrent_deferred_liabilities` DOUBLE NULL DEFAULT NULL,
  `other_long-term_liabilities` DOUBLE NULL DEFAULT NULL,
  `total_long-term_liabilities` DOUBLE NULL DEFAULT NULL,
  `total_liabilities` DOUBLE NULL DEFAULT NULL,
  `common_stock` BIGINT NULL DEFAULT NULL,
  `preferred_stock` DOUBLE NULL DEFAULT NULL,
  `retained_earnings` DOUBLE NULL DEFAULT NULL,
  `accumulated_other_comprehensive_income_(loss)` DOUBLE NULL DEFAULT NULL,
  `additional_paid-in_capital` DOUBLE NULL DEFAULT NULL,
  `treasury_stock` DOUBLE NULL DEFAULT NULL,
  `other_stockholders_equity` DOUBLE NULL DEFAULT NULL,
  `total_stockholders_equity` DOUBLE NULL DEFAULT NULL,
  `minority_interest` DOUBLE NULL DEFAULT NULL,
  `total_equity` DOUBLE NULL DEFAULT NULL,
  `equity-to-asset` DOUBLE NULL DEFAULT NULL,
  `balance_statement_cash_and_cash_equivalents` DOUBLE NULL DEFAULT NULL,
  `money_market_investments` DOUBLE NULL DEFAULT NULL,
  `gross_loan` DOUBLE NULL DEFAULT NULL,
  `allowance_for_loans_and_lease_losses` DOUBLE NULL DEFAULT NULL,
  `unearned_income` DOUBLE NULL DEFAULT NULL,
  `net_loan` DOUBLE NULL DEFAULT NULL,
  `securities_&_investments` DOUBLE NULL DEFAULT NULL,
  `other_assets_for_banks` DOUBLE NULL DEFAULT NULL,
  `total_deposits` DOUBLE NULL DEFAULT NULL,
  `other_liabilities_for_banks` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`cashflow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`cashflow` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `net_income_from_continuing_operations` DOUBLE NULL DEFAULT NULL,
  `cash_flow_depreciation,_depletion_and_amortization` DOUBLE NULL DEFAULT NULL,
  `change_in_receivables` DOUBLE NULL DEFAULT NULL,
  `change_in_inventory` DOUBLE NULL DEFAULT NULL,
  `change_in_prepaid_assets` DOUBLE NULL DEFAULT NULL,
  `change_in_payables_and_accrued_expense` DOUBLE NULL DEFAULT NULL,
  `change_in_other_working_capital` DOUBLE NULL DEFAULT NULL,
  `change_in_working_capital` DOUBLE NULL DEFAULT NULL,
  `deferred_tax` DOUBLE NULL DEFAULT NULL,
  `stock_based_compensation` DOUBLE NULL DEFAULT NULL,
  `asset_impairment_charge` DOUBLE NULL DEFAULT NULL,
  `cash_from_discontinued_operating_activities` DOUBLE NULL DEFAULT NULL,
  `cash_flow_from_others` DOUBLE NULL DEFAULT NULL,
  `cash_flow_from_operations` DOUBLE NULL DEFAULT NULL,
  `purchase_of_property,_plant,_equipment` DOUBLE NULL DEFAULT NULL,
  `sale_of_property,_plant,_equipment` DOUBLE NULL DEFAULT NULL,
  `purchase_of_business` DOUBLE NULL DEFAULT NULL,
  `sale_of_business` DOUBLE NULL DEFAULT NULL,
  `purchase_of_investment` DOUBLE NULL DEFAULT NULL,
  `sale_of_investment` DOUBLE NULL DEFAULT NULL,
  `net_intangibles_purchase_and_sale` DOUBLE NULL DEFAULT NULL,
  `cash_from_discontinued_investing_activities` DOUBLE NULL DEFAULT NULL,
  `cash_from_other_investing_activities` DOUBLE NULL DEFAULT NULL,
  `cash_flow_from_investing` DOUBLE NULL DEFAULT NULL,
  `issuance_of_stock` DOUBLE NULL DEFAULT NULL,
  `repurchase_of_stock` DOUBLE NULL DEFAULT NULL,
  `net_issuance_of_preferred_stock` DOUBLE NULL DEFAULT NULL,
  `issuance_of_debt` DOUBLE NULL DEFAULT NULL,
  `payments_of_debt` DOUBLE NULL DEFAULT NULL,
  `net_issuance_of_debt` DOUBLE NULL DEFAULT NULL,
  `cash_flow_for_dividends` DOUBLE NULL DEFAULT NULL,
  `cash_flow_for_lease_financing` DOUBLE NULL DEFAULT NULL,
  `other_financing` DOUBLE NULL DEFAULT NULL,
  `cash_flow_from_financing` DOUBLE NULL DEFAULT NULL,
  `beginning_cash_position` DOUBLE NULL DEFAULT NULL,
  `effect_of_exchange_rate_changes` DOUBLE NULL DEFAULT NULL,
  `net_change_in_cash` DOUBLE NULL DEFAULT NULL,
  `ending_cash_position` DOUBLE NULL DEFAULT NULL,
  `capital_expenditure` DOUBLE NULL DEFAULT NULL,
  `free_cash_flow` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `cash_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cash_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`income`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`income` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `revenue` DOUBLE NULL DEFAULT NULL,
  `cost_of_goods_sold` DOUBLE NULL DEFAULT NULL,
  `gross_profit` DOUBLE NULL DEFAULT NULL,
  `gross_margin_%` DOUBLE NULL DEFAULT NULL,
  `selling,_general,_&_admin._expense` DOUBLE NULL DEFAULT NULL,
  `research_&_development` DOUBLE NULL DEFAULT NULL,
  `other_operating_expense` DOUBLE NULL DEFAULT NULL,
  `total_operating_expense` DOUBLE NULL DEFAULT NULL,
  `operating_income` DOUBLE NULL DEFAULT NULL,
  `operating_margin_%` DOUBLE NULL DEFAULT NULL,
  `interest_income` DOUBLE NULL DEFAULT NULL,
  `interest_expense` DOUBLE NULL DEFAULT NULL,
  `net_interest_income` DOUBLE NULL DEFAULT NULL,
  `other_income_(expense)` DOUBLE NULL DEFAULT NULL,
  `pretax_income` DOUBLE NULL DEFAULT NULL,
  `tax_provision` DOUBLE NULL DEFAULT NULL,
  `tax_rate_%` DOUBLE NULL DEFAULT NULL,
  `other_net_income_(loss)` DOUBLE NULL DEFAULT NULL,
  `net_income_including_noncontrolling_interests` DOUBLE NULL DEFAULT NULL,
  `net_income_(continuing_operations)` DOUBLE NULL DEFAULT NULL,
  `net_income_(discontinued_operations)` DOUBLE NULL DEFAULT NULL,
  `other_income_(minority_interest)` DOUBLE NULL DEFAULT NULL,
  `net_income` DOUBLE NULL DEFAULT NULL,
  `net_margin_%` DOUBLE NULL DEFAULT NULL,
  `preferred_dividends` DOUBLE NULL DEFAULT NULL,
  `eps_(basic)` DOUBLE NULL DEFAULT NULL,
  `eps_(diluted)` DOUBLE NULL DEFAULT NULL,
  `shares_outstanding_(diluted_average)` DOUBLE NULL DEFAULT NULL,
  `ebit` DOUBLE NULL DEFAULT NULL,
  `depreciation,_depletion_and_amortization` DOUBLE NULL DEFAULT NULL,
  `ebitda` DOUBLE NULL DEFAULT NULL,
  `ebitda_margin_%` DOUBLE NULL DEFAULT NULL,
  `net_interest_income_(for_banks)` DOUBLE NULL DEFAULT NULL,
  `non_interest_income` DOUBLE NULL DEFAULT NULL,
  `credit_losses_provision` DOUBLE NULL DEFAULT NULL,
  `other_noninterest_expense` DOUBLE NULL DEFAULT NULL,
  `total_noninterest_expense` DOUBLE NULL DEFAULT NULL,
  `special_charges` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `income_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `income_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`quality`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`quality` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `market_cap` DOUBLE NULL DEFAULT NULL,
  `enterprise_value` DOUBLE NULL DEFAULT NULL,
  `month_end_stock_price` DOUBLE NULL DEFAULT NULL,
  `net_cash_per_share` DOUBLE NULL DEFAULT NULL,
  `net_current_asset_value` DOUBLE NULL DEFAULT NULL,
  `net-net_working_capital` DOUBLE NULL DEFAULT NULL,
  `intrinsic_value:_projected_fcf` DOUBLE NULL DEFAULT NULL,
  `median_ps_value` DOUBLE NULL DEFAULT NULL,
  `peter_lynch_fair_value` DOUBLE NULL DEFAULT NULL,
  `graham_number` DOUBLE NULL DEFAULT NULL,
  `earnings_power_value_(epv)` DOUBLE NULL DEFAULT NULL,
  `altman_z-score` DOUBLE NULL DEFAULT NULL,
  `piotroski_f-score` DOUBLE NULL DEFAULT NULL,
  `beneish_m-score` DOUBLE NULL DEFAULT NULL,
  `scaled_net_operating_assets` DOUBLE NULL DEFAULT NULL,
  `sloan_ratio_%` DOUBLE NULL DEFAULT NULL,
  `current_ratio` DOUBLE NULL DEFAULT NULL,
  `quick_ratio` DOUBLE NULL DEFAULT NULL,
  `cash_ratio` DOUBLE NULL DEFAULT NULL,
  `interest_coverage` DOUBLE NULL DEFAULT NULL,
  `highest_stock_price` DOUBLE NULL DEFAULT NULL,
  `lowest_stock_price` DOUBLE NULL DEFAULT NULL,
  `shares_buyback_ratio_%` DOUBLE NULL DEFAULT NULL,
  `buyback_yield_%` DOUBLE NULL DEFAULT NULL,
  `yoy_rev._per_sh._growth` DOUBLE NULL DEFAULT NULL,
  `yoy_eps_growth` DOUBLE NULL DEFAULT NULL,
  `yoy_ebitda_growth_(%)` DOUBLE NULL DEFAULT NULL,
  `5-year_ebitda_growth_rate_(per_share)` DOUBLE NULL DEFAULT NULL,
  `shares_outstanding_(basic_average)` DOUBLE NULL DEFAULT NULL,
  `shares_outstanding_(eop)` DOUBLE NULL DEFAULT NULL,
  `beta` DOUBLE NULL DEFAULT NULL,
  `number_of_shareholders` BIGINT NULL DEFAULT NULL,
  `number_of_employees` BIGINT NULL DEFAULT NULL,
  `forex_rate` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `quality_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `quality_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`ratios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`ratios` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `roe_%` DOUBLE NULL DEFAULT NULL,
  `roe_%_adjusted_to_book_value` DOUBLE NULL DEFAULT NULL,
  `roa_%` DOUBLE NULL DEFAULT NULL,
  `return-on-tangible-equity` DOUBLE NULL DEFAULT NULL,
  `return-on-tangible-asset` DOUBLE NULL DEFAULT NULL,
  `roc_(joel_greenblatt)_%` DOUBLE NULL DEFAULT NULL,
  `roce_%` DOUBLE NULL DEFAULT NULL,
  `5-year_rore_%` DOUBLE NULL DEFAULT NULL,
  `1-year_roiic_%` DOUBLE NULL DEFAULT NULL,
  `roic_%` DOUBLE NULL DEFAULT NULL,
  `wacc_%` DOUBLE NULL DEFAULT NULL,
  `effective_interest_rate_on_debt_%` DOUBLE NULL DEFAULT NULL,
  `gross_margin_%` DOUBLE NULL DEFAULT NULL,
  `operating_margin_%` DOUBLE NULL DEFAULT NULL,
  `net_margin_%` DOUBLE NULL DEFAULT NULL,
  `ebitda_margin_%` DOUBLE NULL DEFAULT NULL,
  `fcf_margin_%` DOUBLE NULL DEFAULT NULL,
  `debt-to-equity` DOUBLE NULL DEFAULT NULL,
  `equity-to-asset` DOUBLE NULL DEFAULT NULL,
  `debt-to-asset` DOUBLE NULL DEFAULT NULL,
  `liabilities-to-assets` DOUBLE NULL DEFAULT NULL,
  `gross-profit-to-asset_%` DOUBLE NULL DEFAULT NULL,
  `degree_of_financial_leverage` DOUBLE NULL DEFAULT NULL,
  `asset_turnover` DOUBLE NULL DEFAULT NULL,
  `dividend_payout_ratio` DOUBLE NULL DEFAULT NULL,
  `days_sales_outstanding` DOUBLE NULL DEFAULT NULL,
  `days_payable` DOUBLE NULL DEFAULT NULL,
  `days_inventory` DOUBLE NULL DEFAULT NULL,
  `cash_conversion_cycle` DOUBLE NULL DEFAULT NULL,
  `receivables_turnover` DOUBLE NULL DEFAULT NULL,
  `inventory_turnover` DOUBLE NULL DEFAULT NULL,
  `cogs-to-revenue` DOUBLE NULL DEFAULT NULL,
  `inventory-to-revenue` DOUBLE NULL DEFAULT NULL,
  `capex-to-revenue` DOUBLE NULL DEFAULT NULL,
  `capex-to-operating-income` DOUBLE NULL DEFAULT NULL,
  `capex-to-operating-cash-flow` DOUBLE NULL DEFAULT NULL,
  `net_interest_margin_(bank_only)_%` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `ratios_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ratios_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`share`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`share` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `revenue_per_share` DOUBLE NULL DEFAULT NULL,
  `ebitda_per_share` DOUBLE NULL DEFAULT NULL,
  `ebit_per_share` DOUBLE NULL DEFAULT NULL,
  `earnings_per_share_(diluted)` DOUBLE NULL DEFAULT NULL,
  `eps_without_nri` DOUBLE NULL DEFAULT NULL,
  `owner_earnings_per_share_(ttm)` DOUBLE NULL DEFAULT NULL,
  `free_cash_flow_per_share` DOUBLE NULL DEFAULT NULL,
  `operating_cash_flow_per_share` DOUBLE NULL DEFAULT NULL,
  `cash_per_share` DOUBLE NULL DEFAULT NULL,
  `dividends_per_share` DOUBLE NULL DEFAULT NULL,
  `book_value_per_share` DOUBLE NULL DEFAULT NULL,
  `tangible_book_per_share` DOUBLE NULL DEFAULT NULL,
  `total_debt_per_share` DOUBLE NULL DEFAULT NULL,
  `month_end_stock_price` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `share_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `share_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `stock`.`valuation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`valuation` (
  `enterprise_id` BIGINT NULL DEFAULT NULL,
  `year_id` BIGINT NULL DEFAULT NULL,
  `years` BIGINT NULL DEFAULT NULL,
  `pe_ratio` DOUBLE NULL DEFAULT NULL,
  `pe_ratio_without_nri` DOUBLE NULL DEFAULT NULL,
  `price-to-owner-earnings` DOUBLE NULL DEFAULT NULL,
  `pb_ratio` DOUBLE NULL DEFAULT NULL,
  `price-to-tangible-book` DOUBLE NULL DEFAULT NULL,
  `price-to-free-cash-flow` DOUBLE NULL DEFAULT NULL,
  `price-to-operating-cash-flow` DOUBLE NULL DEFAULT NULL,
  `ps_ratio` DOUBLE NULL DEFAULT NULL,
  `peg_ratio` DOUBLE NULL DEFAULT NULL,
  `ev-to-revenue` DOUBLE NULL DEFAULT NULL,
  `ev-to-ebitda` DOUBLE NULL DEFAULT NULL,
  `ev-to-ebit` DOUBLE NULL DEFAULT NULL,
  `earnings_yield_(joel_greenblatt)_%` DOUBLE NULL DEFAULT NULL,
  `forward_rate_of_return_(yacktman)_%` DOUBLE NULL DEFAULT NULL,
  `shiller_pe_ratio` DOUBLE NULL DEFAULT NULL,
  `cyclically_adjusted_pb_ratio` DOUBLE NULL DEFAULT NULL,
  `cyclically_adjusted_ps_ratio` DOUBLE NULL DEFAULT NULL,
  `cyclically_adjusted_price-to-fcf` DOUBLE NULL DEFAULT NULL,
  `dividend_yield_%` DOUBLE NULL DEFAULT NULL,
  `fcf_yield_%` DOUBLE NULL DEFAULT NULL,
  INDEX `enterprise_id_idx` (`enterprise_id` ASC) VISIBLE,
  INDEX `year_id_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `valuation_enterprise_id`
    FOREIGN KEY (`enterprise_id`)
    REFERENCES `stock`.`companies` (`enterprise_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `valuation_year_id`
    FOREIGN KEY (`year_id`)
    REFERENCES `stock`.`years` (`year_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
