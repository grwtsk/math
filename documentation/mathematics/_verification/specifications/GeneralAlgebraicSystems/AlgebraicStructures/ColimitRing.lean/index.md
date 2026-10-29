# Verification target: Colimit Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e424a312a23a58cdeef65a4769b37c1e8290274",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e424a312a23a58cdeef65a4769b37c1e8290274`.

Source path: `GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeCommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Colimit.DirectLimit` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/directlimit.md) | 46 | `declaration-track:54138ce9156c14ebc6a7b4ed43116231d57c6b1e59ca6079388fd91682e2f87d` |
| 2 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/commring.md) | 57 | `declaration-track:e5ac3c03265a27be5b69ea187a2fbe81f82bb9b2be5800d94a1d0a3a3956b9aa` |
| 3 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/ring.md) | 60 | `declaration-track:a2d87c971bd1ad6cc25aa7210608d8ce41c6d750ed7607912e668826c677dfd9` |
| 4 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/zero.md) | 64 | `declaration-track:1293054c6acc47fefb86f76268627dee2edf01af5e8ab6820369d81d3b8a3b8e` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/instance.md) | 68 | `declaration-track:4a04b92c36c422020a752dfc37e134a20937377bd1bc8f46c0fe70a3731a68e4` |
| 6 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/of.md) | 72 | `declaration-track:ffe5e52493557cc64b15a73c116da395557abbd173b5baab69c0119de274c45a` |
| 7 | `theorem` | [quotientMk_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/quotientmk-of.md) | 82 | `result-track:41f4ce20bfe0d8e22aa0638efbd48a658e744bc4f6d817665a81d67640a05f8c` |
| 8 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/of-f.md) | 85 | `result-track:7e536ad0b8df7101dd567ba4ad2ac54b72f648cba173bab692bc36e3eae9bfaf` |
| 9 | `theorem` | [exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/exists-of.md) | 90 | `result-track:58fdd7fa824cbf42e474852f02144ac623da3f445c254954593d39188a504ddd` |
| 10 | `theorem` | [Polynomial.exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/polynomial-exists-of.md) | 104 | `result-track:2ce663542c2427e226499eb5f0326b04f36ad4ffb80b96c592a134eb71bf2422` |
| 11 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/induction-on.md) | 123 | `result-track:cc75125d37df2a57ecd1221e2cc82dcbf0eb7cef37f8020c723143ed11cb9ed7` |
| 12 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/lift.md) | 137 | `declaration-track:03fd3d95b7d6611f4c1da6762a6dee91fb1b489350b26bf3b842748e37d0e355` |
| 13 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/lift-of.md) | 154 | `result-track:4bb7f4a6058dcae8089a361a299d2c171154bc2118bd4dee2217152adfa5b797` |
| 14 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/lift-unique.md) | 157 | `result-track:ad1a9f95baf791227cd1f0acebf8e4a9f5acb15ffbc443214d137469e44827d1` |
| 15 | `lemma` | [lift_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/lift-injective.md) | 163 | `result-track:c0f6ef56bd4c0dd7b259d468412e4a0dfbb96a8efbfe5ce8044dde868b87424e` |
| 16 | `def` | [ringEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/ringequiv.md) | 180 | `declaration-track:29e72f18431e6915f84fa0dd0b0c63e17d679027dcdd10c3337fe494e847ca12` |
| 17 | `theorem` | [ringEquiv_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/ringequiv-of.md) | 186 | `result-track:6c4e33af26f06bf40aca3c75830fec1b1639f1c232961f9c461274673ff5373f` |
| 18 | `theorem` | [ringEquiv_symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/ringequiv-symm-mk.md) | 189 | `result-track:d01b0ecd50ea71f8e8aba6c7fd1ba3746a4d958499e0e85b74c8b679c2fa5f1f` |
| 19 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/of-zero-exact.md) | 194 | `result-track:9cd8f33cdba80391d22e14e78eb37cf828849e47582c6a519a4dda2e5a8d46a0` |
| 20 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/of-injective.md) | 206 | `result-track:3e90e4416edc24fb2cedee0971b72ba006e0d91a1a620e85245e998e6cd49b28` |
| 21 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/map.md) | 226 | `declaration-track:0fce7cbee4c709626e9befd18a158fa69cf5f971f078412a2d6c7ab015e4f51c` |
| 22 | `lemma` | [map_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/map-apply-of.md) | 234 | `result-track:8a25d02c2882a61fd5ed297c9ffab8c1d95df7c46206a1758f144f106b93b0c8` |
| 23 | `lemma` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/map-id.md) | 240 | `result-track:6179b25ec7a5fe9b66efffb17326c1069ed4ad5dbf2cbbcd914343253b28e5ac` |
| 24 | `lemma` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/map-comp.md) | 247 | `result-track:9ce72a08c81b7ec493f82a31d0210d384525e33577a37d6c8e05251d0f391c8e` |
| 25 | `def` | [congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/congr.md) | 267 | `declaration-track:76900c5c1ffd3d7204252124d0626d88fdbb71a8860f04b290ab1ce8763d5004` |
| 26 | `lemma` | [congr_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/congr-apply-of.md) | 279 | `result-track:962e65abb24aa94c161185621cbf44e1f23335d427ead064638b7903a878e305` |
| 27 | `lemma` | [congr_symm_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/congr-symm-apply-of.md) | 285 | `result-track:a650c9e334fd3e893e2570fded0e502efc8d1afaa2a29ed53e2f061c8110fd50` |
| 28 | `instance` | [nontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/nontrivial.md) | 307 | `declaration-track:afa1cb78012612f9a0cd939103e75ca23bba61581de16e495492cd17cef33d2a` |
| 29 | `theorem` | [exists_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/exists-inv.md) | 317 | `result-track:a1c05daf7407cd0233794160093def45702e5ce6067420bdf22df550e929b6a6` |
| 30 | `def` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/inv.md) | 329 | `declaration-track:1bfd20384aaa389cafdf62e09be700a2fccccf4f9f8f5491ef131889bf287751` |
| 31 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/mul-inv-cancel.md) | 332 | `result-track:9d0340292db5ad7a1c8228ca9768005dacc16f98dfa769b95928f472696aaa3d` |
| 32 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/inv-mul-cancel.md) | 335 | `result-track:3fbf1953244907409f86203e19ea304a02e74dd47337e2f6523c46e05ccfc6b4` |
| 33 | `abbrev` | [field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitRing.lean/declarations/field.md) | 340 | `declaration-track:3bd5322f549a600356cef56ed96e3ab1376f577c5ebb835e5b114d1a88d2a6cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abfe71e97cff73b854acbbc3ec2a62d04ef6098250bb81b2fee77a711ae6fddc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Variant842d1bb742d401e03fe4ff62d33dfbd6890aa8d52d038f635c70d4e660213e6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
