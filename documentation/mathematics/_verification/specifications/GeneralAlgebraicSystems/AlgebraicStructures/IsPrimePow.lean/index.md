# Verification target: Is Prime Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "041a9d6c70bae8052861f773aac0d88eeb95bf68",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `041a9d6c70bae8052861f773aac0d88eeb95bf68`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimePow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow.md) | 21 | `declaration-track:d451c356e37470105eda529c851496bc2566ed8bf4aff980dfcbf5a7bd2e754b` |
| 2 | `theorem` | [isPrimePow_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-def.md) | 24 | `result-track:8aeec980268c3c30846b7c7874ccd753f0d5e5ff180b542a479f2e82404d8947` |
| 3 | `theorem` | [isPrimePow_iff_pow_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-iff-pow-succ.md) | 29 | `result-track:396e7cf45ce20edb28934397dc45ef4ac4887a9ffb5f31861efea61250ad9f66` |
| 4 | `theorem` | [not_isPrimePow_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/not-isprimepow-zero.md) | 34 | `result-track:db69eedea6011914198d3d5e2eeff2887b1fd5b96cd0fb4dd874bb3e92b9689b` |
| 5 | `theorem` | [IsPrimePow.not_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-not-unit.md) | 40 | `result-track:71ce4ceb07719c90f2a667754b66ff2237c21e23b9937e3046f8a52e971c0c43` |
| 6 | `theorem` | [IsUnit.not_isPrimePow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isunit-not-isprimepow.md) | 44 | `result-track:deebfc58eb5f07986d9806cf193c2c71441fe8bd6ec88cf23568ad30cd3d6411` |
| 7 | `theorem` | [not_isPrimePow_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/not-isprimepow-one.md) | 46 | `result-track:8799d5bcc5c0de29f47d648dc3e778616e2314360387325b18aa98c47e3d0a18` |
| 8 | `theorem` | [Prime.isPrimePow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/prime-isprimepow.md) | 49 | `result-track:08097c4549ad10a1939a95c0a5241b2bb27f19009080c661e2eb8607244ac5ef` |
| 9 | `theorem` | [IsPrimePow.pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-pow.md) | 52 | `result-track:bd8b90f9676a929fbd74fa7c6921a5b6cf4d155660bd9ccd6f48d513f67d4837` |
| 10 | `theorem` | [IsPrimePow.ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-ne-zero.md) | 56 | `result-track:5cd97dcefe1596f3756a415923c2cd4dec3e181ed7a85d53e460e3dc5b192202` |
| 11 | `theorem` | [IsPrimePow.ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-ne-one.md) | 59 | `result-track:cd0ffd6101aede6c11a4f1944f5cb78b154f0236ad075fba481284482c150add` |
| 12 | `theorem` | [isPrimePow_nat_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-nat-iff.md) | 64 | `result-track:fa0f849b1e3cc4469ed229790bfcb3c7f8943118b839f684f32c2a4216999349` |
| 13 | `theorem` | [Nat.Prime.isPrimePow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/nat-prime-isprimepow.md) | 67 | `result-track:648d5c36e2d81e826f1c315f61d40482960d585d380e8da9c317d6ea5384c102` |
| 14 | `theorem` | [isPrimePow_nat_iff_bounded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-nat-iff-bounded.md) | 70 | `result-track:c8d3e087c760e392a83bfbf43acfa839b158c3701d0cfc04b5a4bf07a7c5a76a` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/instance.md) | 79 | `declaration-track:d30529dc72a763acc89ecda0444719d47a2ab2757b7136c230b65d7ffc5f2151` |
| 16 | `theorem` | [IsPrimePow.dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-dvd.md) | 82 | `result-track:faf28c963df95bd494e847fdedcd20698f656e0ed7cc9797237cb66e2b06dee7` |
| 17 | `theorem` | [IsPrimePow.two_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-two-le.md) | 91 | `result-track:35f36298f2a317554faf5ee910f73732905083a499d3c8fb0645cece7154eac7` |
| 18 | `theorem` | [IsPrimePow.pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-pos.md) | 96 | `result-track:d4004436f8a744d6dbf4cca0644f401f039e848f0210298246f3240eeab9ac00` |
| 19 | `theorem` | [IsPrimePow.one_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/IsPrimePow.lean/declarations/isprimepow-one-lt.md) | 99 | `result-track:55d744f0c2e4f867a08a03511f73d0789b867434b92c4af604fd1784ecb4f663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e394223fde07f97a638d543272c7d2772888861d1bbeefadbca44eb233f3d83c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variantda1d4aa7e898058f4413a9229e811c2eaee313d93e3616b5b1402d13b581cf22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
