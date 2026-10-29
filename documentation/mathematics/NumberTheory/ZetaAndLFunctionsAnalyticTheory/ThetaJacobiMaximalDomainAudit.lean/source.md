# Theta Jacobi Maximal Domain Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0507695a764d156e78ab1bdc53f88eba324e1700` · SHA-256 `e3f05acb67bade45e32549db68a3871c2d45cfd73c8228e61bdcafb0302e321d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ThetaJacobiMaximalDomain
set_option autoImplicit false
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_zero
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_zero
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_succ
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_succ
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_zero_inner
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_zero_inner
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_succ_inner
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_succ_inner
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiOperator_coordinate
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiOperator_coordinate
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_memℓp_of_mem_domain
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiExpression_memℓp_of_mem_domain
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_inner_of_expression_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.standard_inner_of_expression_eq
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.core_inner_of_expression_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.core_inner_of_expression_eq
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.domain_inner_of_expression_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.domain_inner_of_expression_eq
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_domain_of_expression_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_domain_of_expression_eq
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_domain_of_jacobiExpression_memℓp
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_domain_of_jacobiExpression_memℓp
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiDomain_iff_memℓp_expression
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiDomain_iff_memℓp_expression
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientDomain
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientDomain
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_coefficientDomain_iff
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_coefficientDomain_iff
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientDomain_eq_jacobiDomain
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientDomain_eq_jacobiDomain
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiDomain_iff_summable_norm_sq
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiDomain_iff_summable_norm_sq
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientAction
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientAction
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientAction_apply
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientAction_apply
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator_eq_jacobiOperator
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator_eq_jacobiOperator
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator_isSelfAdjoint
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.coefficientOperator_isSelfAdjoint
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiGraph_iff_expression
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.mem_jacobiGraph_iff_expression
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiOperator_eq_expression_vector
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.jacobiOperator_eq_expression_vector
set_option pp.proofs false in
#print FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.rawPoint_mem_coefficientDomain
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiMaximalDomain.rawPoint_mem_coefficientDomain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e33d52cc876817434e704a1ebc7f01d84311efe29d9260ca2130cd7cbc3ea70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomainAudit/Variante3f05acb67bade45e32549db68a3871c2d45cfd73c8228e61bdcafb0302e321d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
