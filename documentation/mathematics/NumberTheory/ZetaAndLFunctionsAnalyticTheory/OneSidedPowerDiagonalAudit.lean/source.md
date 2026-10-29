# One Sided Power Diagonal Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `362a4f1c1897e793f454514fa6356dd2db1b4e07` · SHA-256 `9265a3411dcd6fe03f0c292aca85984ad86c794ea35803cdac4755e265b1bd74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceOneSidedPowerDiagonal

set_option pp.all true in
#check RH16OneSidedPowerDiagonal.actual_correlation_positive_inner
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.actual_diagonalCorrelation_positive_inner
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.properLargePowerInventory
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.properLargePowerDiagonal
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.properLargePowerUpperBudget
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.actual_power_atom_one_sided
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.actual_proper_power_diagonal_upper
set_option pp.all true in
#check RH16OneSidedPowerDiagonal.properLargePowerUpperBudget_eq_filtered

#print axioms RH16OneSidedPowerDiagonal.actual_correlation_positive_inner
#print axioms RH16OneSidedPowerDiagonal.actual_diagonalCorrelation_positive_inner
#print axioms RH16OneSidedPowerDiagonal.properLargePowerInventory
#print axioms RH16OneSidedPowerDiagonal.properLargePowerDiagonal
#print axioms RH16OneSidedPowerDiagonal.properLargePowerUpperBudget
#print axioms RH16OneSidedPowerDiagonal.actual_power_atom_one_sided
#print axioms RH16OneSidedPowerDiagonal.actual_proper_power_diagonal_upper
#print axioms RH16OneSidedPowerDiagonal.properLargePowerUpperBudget_eq_filtered
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3284ffde2245ae7db7fcd6b55052c323203ee90353ca22388f49ad198b117338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OneSidedPowerDiagonalAudit/Variant9265a3411dcd6fe03f0c292aca85984ad86c794ea35803cdac4755e265b1bd74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
