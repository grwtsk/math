# Verification target: Cech Nerve

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48dbc701c6bc806b8a5f50a247604d4ec5510140",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CechNerve.lean/index.md) · [Full source](../../../../AlgebraicTopology/CechNerve.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48dbc701c6bc806b8a5f50a247604d4ec5510140`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechnerve-source-edition-2.md) | 50 | `declaration-track:7b582e59caefc11f56bb289d24e98ed881cd21501aeb52780f6a2555c1c51318` |
| 2 | `def` | [mapCechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/mapcechnerve.md) | 57 | `declaration-track:dec0dd0309a7dff6f3b17a21ed3e93ecdc772dcfdcf1cfa55e20a781bf0b8ff7` |
| 3 | `def` | [augmentedCechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/augmentedcechnerve-source-edition-2.md) | 67 | `declaration-track:739ff135e485f578934bd98aab9899d51ffeaa0233eb9b81bdb8da275509b965` |
| 4 | `def` | [mapAugmentedCechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/mapaugmentedcechnerve.md) | 74 | `declaration-track:45795a6f640ef5d14fb872a9d4731ae75f8a324280ed3525fbef4831fb0e0bf3` |
| 5 | `def` | [cechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechnerve.md) | 92 | `declaration-track:4e8aa3df4cd0d81b74c3df4345ce1069a84f3bc1b3c3774d3f85a6e40561a2bb` |
| 6 | `def` | [augmentedCechNerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/augmentedcechnerve.md) | 98 | `declaration-track:63ae08fd7196902160513ae31d63f3a1cc1a58dafced4037b5f5f6bcc218c41f` |
| 7 | `def` | [equivalenceRightToLeft](../../../../AlgebraicTopology/CechNerve.lean/declarations/equivalencerighttoleft.md) | 104 | `declaration-track:5f25d96a4efb4a5a26eb42e2b57074d93cd0cda808899eabdaab3a524dd6fd1d` |
| 8 | `def` | [equivalenceLeftToRight](../../../../AlgebraicTopology/CechNerve.lean/declarations/equivalencelefttoright-source-edition-2.md) | 115 | `declaration-track:cde8d6cdb0eaeeabc71f8744e28f4fbfeb0c83752205c0b11f7c1c40439134e0` |
| 9 | `def` | [cechNerveEquiv](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechnerveequiv.md) | 134 | `declaration-track:3b98bb065342f8ad6cc53473152fffc5abf693f3777f4fc6d8c51158b4713bc0` |
| 10 | `abbrev` | [cechNerveAdjunction](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechnerveadjunction.md) | 162 | `declaration-track:153240ee1006046f451c7da4bb6fb619ffb32962bef582eb7a2b7169be8c39d0` |
| 11 | `def` | [cechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechconerve-source-edition-2.md) | 186 | `declaration-track:84c4612fb4cfa54c052818ef1d1c8a049cce1277f4320744f89bc86fcdc108ac` |
| 12 | `def` | [mapCechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/mapcechconerve.md) | 195 | `declaration-track:369a28c7469fafb4aa9b0a3e28ecb2d33ba428195bbfca16b6ae708f18baa8ba` |
| 13 | `def` | [augmentedCechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/augmentedcechconerve.md) | 205 | `declaration-track:0b92067cf7c7f3db9ce84c2a835077527ce6e793843215ababb24b6ad2c6863d` |
| 14 | `def` | [mapAugmentedCechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/mapaugmentedcechconerve.md) | 213 | `declaration-track:4b755a0d502e3080747e4d42fad2039e233b2cf96e136182efebf7532c63e2f7` |
| 15 | `def` | [cechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechconerve.md) | 231 | `declaration-track:76b05ec3df6a330c1297f22e1729611fea250819a49b8bb10c87fb432597096e` |
| 16 | `def` | [augmentedCechConerve](../../../../AlgebraicTopology/CechNerve.lean/declarations/augmentedcechconerve-source-edition-2.md) | 237 | `declaration-track:53750dcc08e61a90508160bda064fee78ed80ac3e619981c3a56ed8e39ffa56b` |
| 17 | `def` | [equivalenceLeftToRight](../../../../AlgebraicTopology/CechNerve.lean/declarations/equivalencelefttoright.md) | 243 | `declaration-track:40a06150d7493f7fcbd39d241b14658ea1875cc037450e6a5975e03a7ce8d4bf` |
| 18 | `def` | [equivalenceRightToLeft](../../../../AlgebraicTopology/CechNerve.lean/declarations/equivalencerighttoleft-source-edition-2.md) | 255 | `declaration-track:b952afa1a812724c6d4f9bb635cea77176e39ce10d3453d853eb633b20fbe210` |
| 19 | `def` | [cechConerveEquiv](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechconerveequiv.md) | 282 | `declaration-track:07fef4da11dfad769997c8106b7dd02cfdc8cd7b57996f2bf96017ba17ef542f` |
| 20 | `abbrev` | [cechConerveAdjunction](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechconerveadjunction.md) | 312 | `declaration-track:775576919763db038edb49e70d75def34c5c87e8caf5ed7a7f80cdf49bcc3cc2` |
| 21 | `def` | [cechNerveTerminalFrom](../../../../AlgebraicTopology/CechNerve.lean/declarations/cechnerveterminalfrom.md) | 318 | `declaration-track:3c0f33f0785c7034ecf999edb6c725f4673c07b988d784a434cf01aa1858185d` |
| 22 | `def` | [wideCospan](../../../../AlgebraicTopology/CechNerve.lean/declarations/widecospan.md) | 328 | `declaration-track:26f12209a2fb762e2a2465a2388ac38eaa90b295ff2608c938eb3f532c6ccc16` |
| 23 | `instance` | [uniqueToWideCospanNone](../../../../AlgebraicTopology/CechNerve.lean/declarations/uniquetowidecospannone.md) | 331 | `declaration-track:4b9b402365df28efcdf86f45d91f08f5ebe5f89888fcce9b0e17d35dcdeec510` |
| 24 | `def` | [wideCospan.limitCone](../../../../AlgebraicTopology/CechNerve.lean/declarations/widecospan-limitcone.md) | 338 | `declaration-track:8b0c02da47a06f668b2ed1462ce2da7098a4c7c0755b3dea050d22fc9d75c702` |
| 25 | `instance` | [hasWidePullback](../../../../AlgebraicTopology/CechNerve.lean/declarations/haswidepullback-source-edition-2.md) | 360 | `declaration-track:fc9e0285ef8c276867121894f969d1894d0a7e9bee7f7e9bef806625e6d35b3a` |
| 26 | `instance` | [hasWidePullback'](../../../../AlgebraicTopology/CechNerve.lean/declarations/haswidepullback.md) | 367 | `declaration-track:cb579a44fc6e623260ef50c40295ea71bde2a8f59e9fd5b26b87422552aa4438` |
| 27 | `instance` | [hasLimit_wideCospan](../../../../AlgebraicTopology/CechNerve.lean/declarations/haslimit-widecospan.md) | 373 | `declaration-track:1558e7324605bd3de2421a8922a64bfa49668f59193179ebccbdf1fbefa176a3` |
| 28 | `def` | [wideCospan.limitIsoPi](../../../../AlgebraicTopology/CechNerve.lean/declarations/widecospan-limitisopi.md) | 376 | `declaration-track:295c87755d744a9887804a175ecf52af38a7e8b6a649f3322563bde5b12d3d72` |
| 29 | `lemma` | [wideCospan.limitIsoPi_inv_comp_pi](../../../../AlgebraicTopology/CechNerve.lean/declarations/widecospan-limitisopi-inv-comp-pi.md) | 382 | `result-track:2392802b800fe858d2e8b55c154e59e2e3961bc393a4e659f9060bf0200093d5` |
| 30 | `lemma` | [wideCospan.limitIsoPi_hom_comp_pi](../../../../AlgebraicTopology/CechNerve.lean/declarations/widecospan-limitisopi-hom-comp-pi.md) | 387 | `result-track:a8b3e81edbf434570dd7f0e94718fdc9e8afed6e0bf603548e5ed4b5a53bfdee` |
| 31 | `def` | [iso](../../../../AlgebraicTopology/CechNerve.lean/declarations/iso.md) | 394 | `declaration-track:4c85ac45b82c00af3a6fd1091e3a4746fe5fb50aed46ae5263d20e6236a02c0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4af0795bae5a011c3ee18edd9d8d2e37c7736e23786eb628a7c38570035054b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variant3bd9c740c4f6fd8370a613700e39b50c98731289c4b3d5ef8ad6d9ffe23d3784.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
