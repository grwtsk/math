# Verification target: Frobenius Fraction Field Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bc249cbfa9b4cd4294fe850c8e79b1c4f69e50c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bc249cbfa9b4cd4294fe850c8e79b1c4f69e50c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.DiscreteValuationRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succNthDefiningPoly](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/succnthdefiningpoly.md) | 76 | `declaration-track:4549ff3610469435d12e58109874d7188bff171ee6c1b204accf836f26391747` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/succnthdefiningpoly-degree.md) | 84 | `result-track:e862dbb7f7f6d36707040a200eb376ac482129ed53a857dc2b8a597fac4ee63e` |
| 3 | `theorem` | [root_exists](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/root-exists.md) | 108 | `result-track:26e4633cd9966a7cc7a093623c08d4873e44cca7ab2241f2170616a01ac78b39` |
| 4 | `def` | [succNthVal](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/succnthval.md) | 115 | `declaration-track:5d32903359c7acda0fd371f43c033817d707ec5380f4d66be208b1267b542d82` |
| 5 | `theorem` | [succNthVal_spec](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/succnthval-spec-source-edition-2.md) | 119 | `result-track:ebf541de0e3bc65db6c4ef7be94d38d0a55e5aa6f4782f57552846783c110769` |
| 6 | `theorem` | [succNthVal_spec'](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/succnthval-spec.md) | 124 | `result-track:69b498d7c3c50cdf5ddfad0825f26bc34955916ec9613f8fadc4d2b400fc5b41` |
| 7 | `theorem` | [solution_pow](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/solution-pow.md) | 149 | `result-track:ae8152d64aba3d6ba1946e03c15be7599f41d420179ffd64608905e729d8855f` |
| 8 | `def` | [solution](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/solution.md) | 153 | `declaration-track:c23d9f49b5e36b5f56b2809d9dd291ad5b30bc2bcbbdea5969c3576d1083c313` |
| 9 | `theorem` | [solution_spec](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/solution-spec-source-edition-2.md) | 156 | `result-track:bf953810010156d5723a881a3c9c765c834633ebcaaf8508c49e56aadf434e93` |
| 10 | `theorem` | [solution_nonzero](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/solution-nonzero.md) | 159 | `result-track:6c6d57803b5ff0689e192f9ff579fe464f0d6c57246dca57a6b1addb0ecc4ee4` |
| 11 | `theorem` | [solution_spec'](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/solution-spec.md) | 167 | `result-track:3bddd2a89a1e7cb7c4b7f6c48eb337156ac467a4c293747030ccb7aab128fcb5` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/frobeniusrotationcoeff.md) | 194 | `declaration-track:095e3e8c7ca4e19b5576d004af46dfe5716c69e5ec90e52a22c8880b9446470a` |
| 13 | `def` | [frobeniusRotation](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/frobeniusrotation.md) | 202 | `declaration-track:677b889618d684ccfa3856e418a255876ed1202a01f0b1d1789b131b9c3dbbe4` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/frobeniusrotation-nonzero.md) | 205 | `result-track:2e90535659c927797e7cb97814cf4672db3fa9b0deab81d0995d1922d582fea0` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/frobenius-frobeniusrotation.md) | 211 | `result-track:789925cf63648a0b3a2acd17d8ad4a1e8fe83f67ea021de1fb191d85b407e3d0` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/exists-frobenius-solution-fractionring-aux.md) | 232 | `result-track:3cefeec934c822c8e3450945156d34ce2dbffea4aa91bad9e0ce1fd87d1a2a24` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../CommutativeAlgebra/FrobeniusFractionFieldNamespaced.lean/declarations/exists-frobenius-solution-fractionring.md) | 258 | `result-track:2ce57e757a06988172db896f3cc81c3e6cc3d8facf45c1fa59c5d231e83e89a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8acc6a3d4d4a1fc647511a048baa8200ce2b608383c0db1a498b44beec093389 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant1e8f37bcaa07c2586b6f13edc45326718a3684c216d29bd31dfd0cc63bed7191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
