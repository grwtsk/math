# Verification target: Ruzsa Szemeredi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00131faee0fb2f56a6c5e914b7396e43137b42a4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00131faee0fb2f56a6c5e914b7396e43137b42a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.AP.Three.Behrend` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Triangle.Tripartite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Rify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ruzsaSzemerediNumber](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumber.md) | 53 | `declaration-track:929a30af2cfe0851fc83a9437d638d7189392a946ba537eaf000b8fedc8e8e18` |
| 2 | `lemma` | [ruzsaSzemerediNumber_le](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumber-le.md) | 59 | `result-track:aa295060df93cc01ab63a86a901ce7377da59d66f84fe34398b1c5d8fe5d48f5` |
| 3 | `lemma` | [ruzsaSzemerediNumber_spec](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumber-spec.md) | 61 | `result-track:dabc57c46312a87390a3dfb69798d123dfe1b3e17fe1d89b10a95d4262cbbb01` |
| 4 | `lemma` | [SimpleGraph.LocallyLinear.le_ruzsaSzemerediNumber](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/simplegraph-locallylinear-le-ruzsaszemeredinumber.md) | 72 | `result-track:3fc7a6c3673a239e8562e7bc889dfca0b83cd282d5be36e6708049645ee72789` |
| 5 | `lemma` | [ruzsaSzemerediNumber_mono](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumber-mono.md) | 77 | `result-track:3631fdde8590cd5388cfe0796fa73eb53020f344925e7f09f7b6fa982502e3e0` |
| 6 | `lemma` | [ruzsaSzemerediNumber_congr](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumber-congr.md) | 85 | `result-track:e3cd7acaee33e2efea506d4a034336cb4369121b3eb2f842483fd585c571edf6` |
| 7 | `def` | [ruzsaSzemerediNumberNat](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat.md) | 93 | `declaration-track:de960e061ec58372d2b7352acbe31b2f7c0717b2ccf23d32f657909cc43a00d5` |
| 8 | `lemma` | [ruzsaSzemerediNumberNat_card](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-card.md) | 96 | `result-track:50e50a2cda3c838832c9b341d1cc13e2e2a67d9f4578893679206eaa5b694203` |
| 9 | `lemma` | [ruzsaSzemerediNumberNat_mono](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-mono.md) | 99 | `result-track:7fb9c5894ce943d5e7fdf55e0d813ddab3f8f8ca6d08f26807b2339f4a054386` |
| 10 | `lemma` | [ruzsaSzemerediNumberNat_le](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-le.md) | 102 | `result-track:e1e12af6da451c5ad39b053884166081c3662bad5ff42adce5c2cf7d218ac464` |
| 11 | `lemma` | [ruzsaSzemerediNumberNat_zero](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-zero.md) | 105 | `result-track:aded0f85d3733db23cd735b72c5adb8db5f2c8f8f7723d54aca5d7823a93bdeb` |
| 12 | `lemma` | [ruzsaSzemerediNumberNat_one](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-one.md) | 108 | `result-track:0cb6a110c44dcac2d8d37287ab2bdc43431454edcd5a544c1ac480432baf5b5a` |
| 13 | `lemma` | [ruzsaSzemerediNumberNat_two](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-two.md) | 111 | `result-track:245a54563ee7f58b6664ed913bf69b0beb9a368f8266773f6e8ea89306d93300` |
| 14 | `def` | [triangleIndices](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/triangleindices.md) | 122 | `declaration-track:ccfa8968051899a5e4be5fb7c29507eabf7cae785c03f68dba5f903c623b214e` |
| 15 | `lemma` | [mem_triangleIndices](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/mem-triangleindices.md) | 132 | `result-track:70f7d842f49e67228d6947b98bcb14b48d9af239890699f9fe8d8bb46e4ce2ce` |
| 16 | `lemma` | [card_triangleIndices](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/card-triangleindices.md) | 136 | `result-track:3f5cf2354c15444fdd45bb1445da0f8719db16cd1ee54d0d4b97eb889921d82f` |
| 17 | `lemma` | [noAccidental](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/noaccidental.md) | 139 | `result-track:6d71fcca3aaa0046331aa84fd050d51e8953719c198cee2fb67b0d96476df0a4` |
| 18 | `instance` | [(anonymous)](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/instance.md) | 150 | `declaration-track:5c5664a3c4015d39eb7c4af9dabf0ab30f57693d7803864710a98b20c71cb928` |
| 19 | `lemma` | [locallyLinear](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/locallylinear.md) | 164 | `result-track:d656ffe46a8f6344462853f8854d01f144f68fa943134d4826c3d91f165badcc` |
| 20 | `lemma` | [card_edgeFinset](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/card-edgefinset.md) | 168 | `result-track:b1f5590a649b9cbb707cbd4db79bfaa14c1c66c00a408e36d34936536ea8f7e9` |
| 21 | `lemma` | [addRothNumber_le_ruzsaSzemerediNumber](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/addrothnumber-le-ruzsaszemeredinumber.md) | 177 | `result-track:dccd6e7c1decccfa269137dbd459eb3670ce3565da3a65e76a62244ced3527bc` |
| 22 | `lemma` | [rothNumberNat_le_ruzsaSzemerediNumberNat](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat-source-edition-2.md) | 184 | `result-track:f424a27f7fc457915831b124353facfcc249b613794ea00d0b4b205efb605a9d` |
| 23 | `theorem` | [rothNumberNat_le_ruzsaSzemerediNumberNat'](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat.md) | 205 | `result-track:4310f4d5d1c14619070ed4a53c126050cc19949de4f8b5bb267abff9222055b3` |
| 24 | `theorem` | [ruzsaSzemerediNumberNat_lower_bound](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-lower-bound.md) | 232 | `result-track:a39a03b7009d8145f8806743d9bdc4ac73fc0e7423b84753686777a4582a1aee` |
| 25 | `theorem` | [ruzsaSzemerediNumberNat_asymptotic_lower_bound](../../../../Combinatorics/RuzsaSzemerediNamespaced.lean/declarations/ruzsaszemeredinumbernat-asymptotic-lower-bound.md) | 248 | `result-track:712a292565d11982c5c15d31e40230ec6b24d2992531eb0495fe4ddae8fc9209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=664156825b888b79b79e635a74c57c3c0a5a362e88154d9f2fa6c38abeebbf22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant50eadf9611bbdc14bebeecac7ec7a06806dd0df435106399bcc30716479600b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
