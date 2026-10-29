# Verification target: Normal Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a757179b63811a24a4328ea3c6bb2a7bd6c12f77",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a757179b63811a24a4328ea3c6bb2a7bd6c12f77`.

Source path: `GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Normal.exists_isSplittingField](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-exists-issplittingfield.md) | 32 | `result-track:914c25250fcaada4d9cb70eb6713503d453b7aa6e3872166ded8d20e9e7e5dd4` |
| 2 | `theorem` | [Normal.of_isSplittingField](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-of-issplittingfield.md) | 59 | `result-track:a61909dc330bd10ffbd63eca84ff84f434d91fbb5ff7e472d3cef7e9dc9d0f02` |
| 3 | `instance` | [Polynomial.SplittingField.instNormal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/polynomial-splittingfield-instnormal.md) | 83 | `declaration-track:d9fd8fc6a15e656a582e6a4aa7822b908153e4c7bdf750b27ecf98c601f38f0c` |
| 4 | `instance` | [normal_iSup](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-isup.md) | 91 | `declaration-track:459f94648a42d6590b1d92db6b20a4214121b6384902d43c86603f96ab31f958` |
| 5 | `theorem` | [splits_of_mem_adjoin](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/splits-of-mem-adjoin.md) | 114 | `result-track:42b36b3f37e3db9ce4e3bc99e358f56f3b6f18602ca023fe8bc9ffef5415f505` |
| 6 | `instance` | [normal_sup](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-sup.md) | 126 | `declaration-track:80f214215b4bb234ba4f9d9bb34d570a834eaebc05e1e8bc1aeded3c22332dbb` |
| 7 | `instance` | [normal_iInf](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-iinf.md) | 133 | `declaration-track:f1f6e04e04cac51bc6f5b0f335c059e86b9b1d77cf20086f852f3e91f9f0d176` |
| 8 | `instance` | [normal_inf](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-inf.md) | 148 | `declaration-track:a10c1ec5589e7be714f80164cdf0427a43deff6ae02549729fb4078eb9d78da0` |
| 9 | `theorem` | [AlgHom.fieldRange_of_normal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/alghom-fieldrange-of-normal.md) | 165 | `result-track:944bbe31b0dff2c6391b1f90d5e48ef3151338b3b8e19f3e6716796d5bc1a49e` |
| 10 | `def` | [AlgHom.liftNormal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/alghom-liftnormal.md) | 182 | `declaration-track:125c0463e60f1de0ec1089c4f6857fec5fbb7c8ecc622e3f537058b2be3a595f` |
| 11 | `theorem` | [AlgHom.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/alghom-liftnormal-commutes.md) | 197 | `result-track:d3585819fdf912af1fd83062e0e66b52d8faf09414749d12a6bcf6049017142b` |
| 12 | `theorem` | [AlgHom.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/alghom-restrict-liftnormal.md) | 204 | `result-track:28a9fa1bab63d86e7e43cc2f243f09b48a48b7160a1e10209ee83659094cef9c` |
| 13 | `def` | [AlgEquiv.liftNormal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/algequiv-liftnormal.md) | 212 | `declaration-track:89bd32c0a4c80e5461e4548523182c7d0aab30bb512b3d3c44bdf73dfea5ee21` |
| 14 | `theorem` | [AlgEquiv.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/algequiv-liftnormal-commutes.md) | 216 | `result-track:05d76f1117c274d26b6ceeb5faaa6dec4a35def1bad699fa334bed8acbdd73ab` |
| 15 | `theorem` | [AlgEquiv.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/algequiv-restrict-liftnormal.md) | 221 | `result-track:0a73dc8987300accaa77a4824a051daa6253e5deff48ea6ed7d3df79942c6cd0` |
| 16 | `theorem` | [AlgEquiv.restrictNormalHom_surjective](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/algequiv-restrictnormalhom-surjective.md) | 229 | `result-track:7e45c050181123dd07b48c74423b33e5fa81a5ccc9a6a1235475e359d523696b` |
| 17 | `theorem` | [Normal.minpoly_eq_iff_mem_orbit](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/normal-minpoly-eq-iff-mem-orbit.md) | 234 | `result-track:b3a4b2c0b4a703d8cd2c9ee48d16ce3bc6c947a7434b09c4cd0d54d5b3497904` |
| 18 | `theorem` | [isSolvable_of_isScalarTower](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/issolvable-of-isscalartower.md) | 242 | `result-track:754c859fe0aa324fb35392014a23a8c22fde374e14398f17ba38f21dc5e51e9e` |
| 19 | `theorem` | [exists_algEquiv_of_root](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/exists-algequiv-of-root.md) | 265 | `result-track:456d3791fc8815ac09f5e61eccad9e98e5a0db21ab082fe4b632d55f63836258` |
| 20 | `theorem` | [exists_algEquiv_of_root'](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/exists-algequiv-of-root-source-edition-2.md) | 275 | `result-track:50fbf2a170ab3516f22911ba31e9dc5e0970c570a618f080203b6a7353a8d59f` |
| 21 | `instance` | [Algebra.IsQuadraticExtension.normal](../../../../FieldTheoryAndPolynomials/NormalBasic.lean/declarations/algebra-isquadraticextension-normal.md) | 286 | `declaration-track:4fb9ffeab12769da41ed5d0c70902ce14c66ced6e3f6872cf9cda3adae0e430d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b690efc31ba80fb08dee5f340a3f67c8c02ef15670b87f0676590a75f714dd54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
