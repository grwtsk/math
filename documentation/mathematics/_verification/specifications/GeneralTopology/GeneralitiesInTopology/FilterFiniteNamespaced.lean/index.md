# Verification target: Filter Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c3aebb0cb6e8f873386b31ffccae664f826a74",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c3aebb0cb6e8f873386b31ffccae664f826a74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [biInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/biinter-mem.md) | 34 | `result-track:dd2fe403db402f9dd43eac280b964c5f746b6d6d0f29f862f2ca782e01d985e9` |
| 2 | `theorem` | [biInter_finset_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/biinter-finset-mem.md) | 41 | `result-track:b8c19df5d44c9d7434771261612af5278e4b3cbbd7807fec56a7a7743c68595c` |
| 3 | `theorem` | [sInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/sinter-mem.md) | 48 | `result-track:de0a81ad37cedd3b5d7b9906c64dddbcf4c7d7f63606c653a43b49d2eaced617` |
| 4 | `theorem` | [iInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinter-mem.md) | 52 | `result-track:0f3cdb33bbcf20aa70bd7372c95821ab1065cc28e8d8dc7a20345568b77d748e` |
| 5 | `theorem` | [mem_generate_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-generate-iff.md) | 66 | `result-track:91189a633b906b2fe50a255608ad0db31b0bcf834f87ef7a37ecfb01848f61ad` |
| 6 | `theorem` | [mem_iInf_of_iInter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-of-iinter.md) | 84 | `result-track:0f4ba350924fd4fc3cb1e17f254fd9d4a661ac54f678bf4e58ff49a6aea372d2` |
| 7 | `theorem` | [mem_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-source-edition-2.md) | 90 | `result-track:b7ef326e88c6e56d42949dcd15ec142511d08b05a4caf0d465a6b449fb2f1631` |
| 8 | `theorem` | [mem_iInf'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf.md) | 110 | `result-track:ae04b722a7e216809e24c5a40f1a00aa3093d7bc7fbde43bf1ebd0306bf74f45` |
| 9 | `theorem` | [exists_iInter_of_mem_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/exists-iinter-of-mem-iinf.md) | 126 | `result-track:9b73f97cccaab731b17ceb0d6cbfda5f95ac982a22113f67b879456ddd312d1c` |
| 10 | `theorem` | [mem_iInf_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-of-finite.md) | 133 | `result-track:ea114c264c0da4a89d49673f3300e068f23c4e775e95f00ea2ff9a64f85b2098` |
| 11 | `theorem` | [mem_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-biinf-principal.md) | 139 | `result-track:dd3a861b526bead3da2c24bead1692c6616310e7c036f40cf07cce23b38d856c` |
| 12 | `theorem` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/exists-mem-filter-of-disjoint.md) | 157 | `result-track:945954a9bce93a67dcbd228577996d08131ea29e3bb4aa7f27dab6559c452e01` |
| 13 | `theorem` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/exists-mem-filter.md) | 168 | `result-track:11654ec117cc1923bae16d810d172a78399cca58c6c1235b8b092a759e90654e` |
| 14 | `theorem` | [iInf_sets_eq_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-sets-eq-finite-source-edition-2.md) | 178 | `result-track:bd48c287ab2061472814fc91bcc4f488209db56a3dff00aeea067057621be61c` |
| 15 | `theorem` | [iInf_sets_eq_finite'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-sets-eq-finite.md) | 183 | `result-track:83f5eb6511bb34f29137f33662ceea98bfd79c85cca4482c46bb7ba44693bae1` |
| 16 | `theorem` | [mem_iInf_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-finite-source-edition-2.md) | 187 | `result-track:5f1d27b85f72a5142e3a0fa96a81da275de6053ba9356bfa64f5261b72e9c96e` |
| 17 | `theorem` | [mem_iInf_finite'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-finite.md) | 191 | `result-track:56badfa2beb148da93beab2c5e595fb107f1de0f53ec1ceaa03a01e2a8647fe6` |
| 18 | `abbrev` | [coframeMinimalAxioms](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/coframeminimalaxioms.md) | 197 | `declaration-track:a4f87019e063b1b83a1142fefb1917df62542973fed3e0af46844a56b919114d` |
| 19 | `instance` | [instCoframe](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/instcoframe.md) | 211 | `declaration-track:2d813c98c890648b9f33f6cffbca8273577be7c4ba7da64e00402da41faf632c` |
| 20 | `theorem` | [mem_iInf_finset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/mem-iinf-finset.md) | 213 | `result-track:47ba5ce1df801ca14f7ee573a14f34ea44fecfacc0e491c75ac279a4f468e0ff` |
| 21 | `theorem` | [iInf_sets_induct](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-sets-induct.md) | 229 | `result-track:1ff50de59555dfe6db18fb811d5789fe0b486e63b6c5f1376c942726b2400d17` |
| 22 | `theorem` | [iInf_principal_finset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-principal-finset.md) | 245 | `result-track:ba061b87f2364fb26cbd214a224e4a43ef2cf1da5e2492c80e4b37f91140305c` |
| 23 | `theorem` | [iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-principal.md) | 252 | `result-track:88cad2cc17027edf1b594ea8492e3ca89b86e4a52e67f53735e6f856ef972b5b` |
| 24 | `theorem` | [iInf_principal'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-principal-source-edition-2.md) | 259 | `result-track:c403fa5afe7c0520208e3eed0d165271f474abd8e8c90d804b206f155ce0c1f8` |
| 25 | `theorem` | [iInf_principal_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/iinf-principal-finite.md) | 262 | `result-track:c513e3672de0b94a8ed6ed07d03285f873749b31753dff15c254d75612895ef7` |
| 26 | `theorem` | [eventually_all](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventually-all.md) | 272 | `result-track:46a1da4b72256ca583460ef571adb1b81214e6e884a1908786df680b9ce3e190` |
| 27 | `theorem` | [eventually_all_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventually-all-finite.md) | 277 | `result-track:d587a47125bc308fada6b9a1f425dbe4882470426d4b256f26324e35ed0718d5` |
| 28 | `theorem` | [eventually_all_finset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventually-all-finset.md) | 285 | `result-track:f6b99417c81880daf0171c0ba858bdaab1525a76e085977dfd226179d6653c9d` |
| 29 | `lemma` | [EventuallyLE.iUnion](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iunion.md) | 302 | `result-track:22c6e13243acbf696d1b4f2ac6baf10d9fbe1d459b15ce4cf944094853458f77` |
| 30 | `lemma` | [EventuallyEq.iUnion](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iunion.md) | 307 | `result-track:6c6af14a89d03815f5b3dfd897f4c641a500a6e970428c0556234959b7f9bcc2` |
| 31 | `lemma` | [EventuallyLE.iInter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iinter.md) | 311 | `result-track:b954f2fab45e66ce06154452cf175fc125370f1629d7b6caed9d300d4b50823f` |
| 32 | `lemma` | [EventuallyEq.iInter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iinter.md) | 315 | `result-track:0dac95c7e023a4792aa2426e64fdb8ebc2e66cdadbd361c447398d245e15f90f` |
| 33 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iunion-source-line-319-occurrence-2.md) | 319 | `result-track:933b48487e197a9fc41a50f34df60c260ddda91309ca83c5fc3d185a0545730b` |
| 34 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iunion-source-line-327-occurrence-2.md) | 327 | `result-track:a85fa29dca0bb0bc086aa1dec6ba9408ae765261f87acfcffe6e656c0d12e9c7` |
| 35 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iinter-source-line-334-occurrence-2.md) | 334 | `result-track:3e0dc11f865d3b8546097e8a9e3525437f4cb84f1ce3323bb1735c60cc90cb59` |
| 36 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iinter-source-line-342-occurrence-2.md) | 342 | `result-track:e2fecfd3bf9fd425e49e769e886b51b2045c13b1e2a635eb35f9efd3e95ddf60` |
| 37 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iunion-source-line-349-occurrence-2.md) | 349 | `result-track:b666a3cb31f191f938af4cd2b61f1e3431cc8569ec2d2f55b649227b5d3f0897` |
| 38 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iunion-source-line-353-occurrence-2.md) | 353 | `result-track:2a2339c60ccc1f561fcfc8b435b03b70a4d88b2babfa0c80e2784d3e5d745a33` |
| 39 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyle-iinter-source-line-357-occurrence-2.md) | 357 | `result-track:d85557cc28922547e5f9bfc0b84959d61a9e8cac7725b6baa61dd99dd64fc080` |
| 40 | `lemma` | [Filter Finite Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterFiniteNamespaced.lean/declarations/eventuallyeq-iinter-source-line-361-occurrence-2.md) | 361 | `result-track:60d177c322dfd66407a2efc6854cc31541853adefc6c334c078270a9efde699a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22f40520c16a3d666588af02726118bf37228fcaaa82cfca6cedf780d70ea2e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
