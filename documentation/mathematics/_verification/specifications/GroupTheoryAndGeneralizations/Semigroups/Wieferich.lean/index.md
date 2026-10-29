# Verification target: Wieferich

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb0ec6f10e4da6a509d78720119c066e364b9b0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb0ec6f10e4da6a509d78720119c066e364b9b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeCert.Interval` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeCert.PowMod` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Wieferich](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferich.md) | 23 | `declaration-track:0fb36303149d679ce67eb142a387d9624ab810035735e19273a70b9158d677ac` |
| 2 | `def` | [Mirimanoff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/mirimanoff.md) | 26 | `declaration-track:f50650d390e0fdbb45d55685d1323cbe4ef94f0d2c83455b89b1b6072bcc563e` |
| 3 | `def` | [wieferichKR](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferichkr.md) | 29 | `declaration-track:3a4a9741b0acde5a30ac54a523d13b147c6c9e3ef0e30ef83d3c69b3a9395cc2` |
| 4 | `def` | [mirimanoffKR](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/mirimanoffkr.md) | 32 | `declaration-track:975f3e014d157c6371966837d7bcbb9a0feb4c5162b5bab0790cf4eba39e75d6` |
| 5 | `theorem` | [wieferichKR_eq_true_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferichkr-eq-true-iff.md) | 35 | `result-track:ada05c763b0cf5b183feb173b55d2f2ad51f8c32e5aea4ad12af2c55fc92cfd0` |
| 6 | `theorem` | [wieferichKR_eq_false_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferichkr-eq-false-iff.md) | 40 | `result-track:d4faf4d9548dbf63cbd620dd9f44a494800c16c30d7f5a010d904b3d496d7905` |
| 7 | `theorem` | [mirimanoffKR_eq_true_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/mirimanoffkr-eq-true-iff.md) | 44 | `result-track:6e7793b326899d1c60f5eb86b4857b269de665d1bd9ecd875e4c805811dd7ef9` |
| 8 | `theorem` | [mirimanoffKR_eq_false_iff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/mirimanoffkr-eq-false-iff.md) | 49 | `result-track:c2a4ac17fe961b610c840960fc896938169ea7441ec919210df088e61b1cded4` |
| 9 | `theorem` | [wieferich_mirimanoff₁](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferich-mirimanoff-source-edition-2.md) | 61 | `result-track:697cb7f7a12f489c6c23a8c885adf80dd66add40d7f70c062950183a241858ee` |
| 10 | `theorem` | [wieferich₅](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferich-source-edition-2.md) | 68 | `result-track:ed5e56e81b75bca3d67b15af2f607799fec8f73512f7e7484ebd4863cb76e072` |
| 11 | `theorem` | [Nat.Prime.mod_6](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/nat-prime-mod-6.md) | 71 | `result-track:aeb2841cd4f70642f35ce87b23e02fbc8f1d9fbfa835c35649697560039610b6` |
| 12 | `theorem` | [wieferich_mirimanoff](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/wieferich-mirimanoff.md) | 89 | `result-track:5fc99c9ce340196f616599d8716e8fe6a57ac10748c07afc151b959ca5920476` |
| 13 | `theorem` | [_root_.pow_eq_one_of_dvd](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/root-pow-eq-one-of-dvd.md) | 100 | `result-track:289e3e17660e38146c4895ec24fc882a5529459a581e733861f04db5f5d12325` |
| 14 | `theorem` | [miller_rabin_squarefree](../../../../../GroupTheoryAndGeneralizations/Semigroups/Wieferich.lean/declarations/miller-rabin-squarefree.md) | 105 | `result-track:44b684b2867894820a4ecffbe99053b21dd27aaf91986fe77ab2794f3b5afed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9813ad82f3634b395ce83fac2a4b61d4141b814da5f3145f8dd3977b599cd78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Wieferich/Variant33077ab5c0fe5e1854637f10360fb15212e3ef450f7decb6d2863a1446711e69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
