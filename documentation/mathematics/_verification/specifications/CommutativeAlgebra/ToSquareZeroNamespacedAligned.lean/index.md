# Verification target: To Square Zero Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93bcf96edf85b34ad5a0c3c534fc49c78e32bf53",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93bcf96edf85b34ad5a0c3c534fc49c78e32bf53`.

Source path: `GRWTSK/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diffToIdealOfQuotientCompEq](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/difftoidealofquotientcompeq.md) | 38 | `declaration-track:c66787506b1e6dc5519d0ce7af0d77fe1743d118a277aad3a9d0ac5f79222bf0` |
| 2 | `theorem` | [diffToIdealOfQuotientCompEq_apply](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/difftoidealofquotientcompeq-apply.md) | 48 | `result-track:218aef55ca2955244b4ffbdcb263dde85a94652a5053d40a65ab036d5f645fc2` |
| 3 | `def` | [derivationToSquareZeroOfLift](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/derivationtosquarezerooflift.md) | 58 | `declaration-track:f8711162f7a331114a66bebbb0627b896bf66b2609aad1ec12f4e09bec286214` |
| 4 | `theorem` | [derivationToSquareZeroOfLift_apply](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/derivationtosquarezerooflift-apply.md) | 83 | `result-track:b20bfb1963329097e70e32983ac777fe6dca798c2cbf64745238a9cdcea08752` |
| 5 | `def` | [liftOfDerivationToSquareZero](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/liftofderivationtosquarezero.md) | 92 | `declaration-track:88835885e4e97e4207a83b7ea0abdf3c6c659404180fde27fc1a6446ce5b6f3a` |
| 6 | `theorem` | [liftOfDerivationToSquareZero_mk_apply](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/liftofderivationtosquarezero-mk-apply.md) | 112 | `result-track:529f920675f9c876c998b1b12810ef32f0ddf16ea49da6f08cc1de5a210be350` |
| 7 | `theorem` | [liftOfDerivationToSquareZero_mk_apply'](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/liftofderivationtosquarezero-mk-apply-source-edition-2.md) | 120 | `result-track:77d1a8907a383792de17cdc557b2587e10b2abf43bdc68ad5a64174d6921d062` |
| 8 | `def` | [derivationToSquareZeroEquivLift](../../../../CommutativeAlgebra/ToSquareZeroNamespacedAligned.lean/declarations/derivationtosquarezeroequivlift.md) | 128 | `declaration-track:06867f4d2cdaf520fd3bd392bde39759f2826bfdd9404a32c5c0c26641967839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b86a23a3667df77212609de79419e839e7a776293130a3b6c5040519e7630bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean","GRWTSK/_verification/specifications/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
