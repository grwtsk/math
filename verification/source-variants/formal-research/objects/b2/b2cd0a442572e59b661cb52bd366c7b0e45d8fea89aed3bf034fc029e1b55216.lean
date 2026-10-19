import SourceActualCriticalCovarianceOrdinarySplit
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
-- Diagnostic-only complete proof printing needs a larger depth and heartbeat budget.
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
set_option pp.maxSteps 100000000
set_option pp.rawOnError true
#print FormalResearch.RiemannHypothesis.SourceActualCriticalCovarianceOrdinarySplit.actualCriticalErrorCovariance_lower_estimate
