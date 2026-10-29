# Verification target: Bases Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53f78b71a14b2402ff5f2c9292ca1b2613830be4",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53f78b71a14b2402ff5f2c9292ca1b2613830be4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Sigma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filterbasis-source-edition-2.md) | 88 | `declaration-track:e8bccdcf4da4e69d457d6fa805af7974fc3ff6c7d598a4f1d5a1c7bb52e4a0e6` |
| 2 | `instance` | [FilterBasis.nonempty_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filterbasis-nonempty-sets.md) | 96 | `declaration-track:c88ecb346cb71ade7ad4e3e83f576b29b40741e433012d8d1942a9b49f84c5c5` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/instance.md) | 101 | `declaration-track:008687911f06df7f6af8decc7cdadf9c0c090c63c5a5b528e879cbd1db6eec1d` |
| 4 | `theorem` | [FilterBasis.mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filterbasis-mem-sets.md) | 104 | `result-track:82d37712f61123acde694767a006c750ee8233a4d498d995c044d51d91a75c77` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:eade88fc6d547495c32f190c9353c5a764688dfbe57afff902e33026e83a8bcb` |
| 6 | `def` | [Filter.asBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filter-asbasis.md) | 115 | `declaration-track:c0f58fdfa429a02d076add03a66a47aff801fe696b3ec2d021f2e87b737b1509` |
| 7 | `structure` | [Filter.IsBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filter-isbasis.md) | 120 | `declaration-track:ec3320d17442e96e0631db25818cf201978e029aff34782ba1a3179a6bdbb384` |
| 8 | `def` | [filterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filterbasis.md) | 131 | `declaration-track:d19030fb30881542f4e2f77c69ddd6a5eeb6d0c15cf60a0bb9034210508a9cfb` |
| 9 | `theorem` | [mem_filterBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-filterbasis-iff.md) | 143 | `result-track:0619a1f96d5f24a73d238406b3706e4331b6d4a6c287f915f0193e27bc234f2f` |
| 10 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filter.md) | 153 | `declaration-track:6fc8b54ae0c33481c6c3362bebceda99e4c95e510de8dc42235a82f9b2a6a4cc` |
| 11 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-filter-iff-source-edition-2.md) | 161 | `result-track:8a1075176e11308d6e9934719a1e0863e9bf7304e0865e2d734b59459bf0fe0b` |
| 12 | `theorem` | [mem_filter_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-filter-of-mem.md) | 164 | `result-track:4fb2e568e13439464e184ee16e3101d2a64f888d6b77fc3418bec5a161ccc08d` |
| 13 | `theorem` | [eq_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/eq-iinf-principal.md) | 167 | `result-track:260988e9536ec28b5ad31efc06c4248e3719c580819bfa03383c3d922bae651e` |
| 14 | `theorem` | [generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/generate.md) | 177 | `result-track:46cab8410602d67b7ab718186b2c55b3ed3e6618c8e380c9fdd95b3278a06478` |
| 15 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filter-source-edition-2.md) | 194 | `declaration-track:d2f7c310d626ffe628e09f148eb5a57b6105dbaa7d706284a8d0197883d7eb57` |
| 16 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-filter-iff.md) | 197 | `result-track:7928df27999b9a36d7ffb99cdf0837e7da2409be576ef29bdaea5eb4fd2ae74b` |
| 17 | `theorem` | [filter_eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/filter-eq-generate.md) | 202 | `result-track:0fcf4c00172cd95affeec7d4189624700dc37a41f55c65f5954237441a0b23fe` |
| 18 | `structure` | [HasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis.md) | 210 | `declaration-track:4ee104a5cf1932926eafbf4440e11f4fa2b48dc4c270b58edf4b53b292c08252` |
| 19 | `theorem` | [HasBasis.mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-mem-iff.md) | 220 | `result-track:06d9bb66722be4102524a04fb6b727af7c626f0293ad1e2f1d52eb0dcb9e2b41` |
| 20 | `theorem` | [HasBasis.eq_of_same_basis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eq-of-same-basis.md) | 223 | `result-track:85801e7a164bbae4480d61f8aa0a887b89283d93eeff214f5588a1ffea3a5491` |
| 21 | `theorem` | [hasBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-iff.md) | 227 | `result-track:bde65a9cd7eeb759c36d5ea9d6ce4387285ef2dcb9d00fc8611f646c4ac3558f` |
| 22 | `theorem` | [HasBasis.ex_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-ex-mem.md) | 230 | `result-track:58654826b7e6941f83fcc90d69102880476dcddd99995154c311561fb16f68c7` |
| 23 | `theorem` | [HasBasis.nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-nonempty.md) | 233 | `result-track:34137f16e9bbe3a28e077ba2b91921bfa16985c724676d6309b8210ea6ad877f` |
| 24 | `theorem` | [IsBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/isbasis-hasbasis.md) | 236 | `result-track:486125a74884ad3ced72b8493d26f1b67b65434534a44d1909b339ee793c6724` |
| 25 | `theorem` | [HasBasis.mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-mem-of-superset.md) | 239 | `result-track:fb324412880ca649e195049ccbee7f640d3060e8918145b8c091d082d5651d9b` |
| 26 | `theorem` | [HasBasis.mem_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-mem-of-mem.md) | 243 | `result-track:3e52bfd34f582450eb524572115f46fa5c1c2a185f37d68a06bdcb22add283c0` |
| 27 | `def` | [HasBasis.index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-index.md) | 247 | `declaration-track:2d8c1fdcb5cb18011b215a4f26f537fe4e0b8e714a84936e9e8320bcd7ae789d` |
| 28 | `theorem` | [HasBasis.property_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-property-index.md) | 250 | `result-track:c3a2bdcf5cbc1ea83db2e3e4e8da992d4ae1412da41a5155cf8ccc22210bcef3` |
| 29 | `theorem` | [HasBasis.set_index_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-set-index-mem.md) | 253 | `result-track:ab2d76d079333eef4717f0dd2e11d8cdb086f6f6d6868b06b4a0f89a0a519cbf` |
| 30 | `theorem` | [HasBasis.set_index_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-set-index-subset.md) | 256 | `result-track:2ed62488b8d4f36f934c98d8dfa5e2ebbc4b25c83ae95feb215d40aa3be5a5e7` |
| 31 | `theorem` | [HasBasis.isBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-isbasis.md) | 259 | `result-track:4deb6d6c9aa4361f6e8648e39d48086fa8923781599b72a2419bba318ab054ee` |
| 32 | `theorem` | [HasBasis.filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-filter-eq.md) | 264 | `result-track:52baa7e1bf9504bc778c7cc01de17d5c999e76c70558029bf48a650bed7d6529` |
| 33 | `theorem` | [HasBasis.eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eq-generate.md) | 268 | `result-track:84e536ce2357f2563a1673cd1b5f0c0a3e07271193fd2ab5cf732837e91b68c8` |
| 34 | `theorem` | [Bases Basic Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-source-line-271-occurrence-2.md) | 271 | `result-track:2fe8c17cb17b9421d478779ae15f7ad0f6214d71d4391ff1749d06f690e4bce2` |
| 35 | `theorem` | [HasBasis.to_hasBasis'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-to-hasbasis.md) | 275 | `result-track:3f32e77799f028e13df595888b3f3d8ddbef9a531267a0821bdc1e28e186af95` |
| 36 | `theorem` | [HasBasis.to_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-to-hasbasis-source-edition-2.md) | 282 | `result-track:9ac69fa70b7947fa16e3499bf0bf20123062206403f9f99c40a5d8f14678b875` |
| 37 | `lemma` | [HasBasis.congr](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-congr.md) | 288 | `result-track:434459ae4b783e0093604a4ff3fb0c40ed8823b95b126b839d6fb8ec0c7879c8` |
| 38 | `theorem` | [HasBasis.to_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-to-subset.md) | 293 | `result-track:615fed9254f8347978b384f72e63dc6353906875415317853b1810dded6e94d4` |
| 39 | `theorem` | [HasBasis.eventually_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eventually-iff.md) | 297 | `result-track:94c3c6672a48943283e0fcbe4ba4a1f0d8f981c2fdb43dfd40f426861d4c8b2e` |
| 40 | `theorem` | [HasBasis.frequently_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-frequently-iff.md) | 300 | `result-track:f2d187760ea940d392fd3cbd21c674f5fd868261a123eae89fd495716b055793` |
| 41 | `theorem` | [HasBasis.exists_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-exists-iff.md) | 304 | `result-track:3b2d6802927252eb5fc83c52b75d47b905c0c75371a0e94e752088230c48dbc1` |
| 42 | `theorem` | [HasBasis.forall_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-forall-iff.md) | 311 | `result-track:0e025b92c451d46fad51a428e2594aa0c55f36fa66f7c05e2e8fd3e356ea6945` |
| 43 | `theorem` | [HasBasis.neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-nebot-iff.md) | 317 | `result-track:b56d87b6640042943e18e52c349c3ebe3a5fa49e5f905eb045d14e9bf3b4eb30` |
| 44 | `theorem` | [HasBasis.eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eq-bot-iff.md) | 321 | `result-track:1f50e8d5d2c3fbaa801a34a8cb69c5a6db244515869d7e50618cb62853d31fb3` |
| 45 | `theorem` | [basis_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/basis-sets.md) | 325 | `result-track:9ee49cb7a2c087a057ea88d554290c075b6350a2a4e010aec837357aeeeef75c` |
| 46 | `theorem` | [asBasis_filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/asbasis-filter.md) | 328 | `result-track:3ba98875d376fc282b6aeb97ca5bf6fb4ac818aadf51ed779de5f85fe71b59df` |
| 47 | `theorem` | [hasBasis_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-self.md) | 331 | `result-track:566b5d6d9195f805302ef063070f65bc8fc09934d7d8b026713098fa52651984` |
| 48 | `theorem` | [HasBasis.comp_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-comp-surjective.md) | 337 | `result-track:a95b760a1c5ac3869d70761c1349c16efc53d2b2a5cfac18706358a9a887cf19` |
| 49 | `theorem` | [HasBasis.comp_equiv](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-comp-equiv.md) | 341 | `result-track:0d00c41096b424dea61473741614d98d47cd464bdacd3eed9934f95ca681023d` |
| 50 | `theorem` | [HasBasis.to_image_id'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-to-image-id-source-edition-2.md) | 344 | `result-track:7af5378cc8efc70b61d3e65f91bdf3330261517c5f0f4f554e4594c23a4bf0d9` |
| 51 | `theorem` | [HasBasis.to_image_id](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-to-image-id.md) | 347 | `result-track:340279cf65685645b190d1f179bc81b2139b660cf91dbb717e2936fb5dd5d0bd` |
| 52 | `theorem` | [HasBasis.restrict](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-restrict.md) | 353 | `result-track:eb085274777435bfad64412c91a479bd41f66017fdbc4cf2fb9b0a2d25c71e67` |
| 53 | `theorem` | [HasBasis.restrict_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-restrict-subset.md) | 362 | `result-track:64738b30bfedb2e2b0d10049c6a07daa3ba73dd3e89e93fa3df8b07701cf6886` |
| 54 | `theorem` | [HasBasis.hasBasis_self_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-hasbasis-self-subset.md) | 367 | `result-track:9a7e77c238dc39081e433b0edba46031df6f0fc4aeb81d9a7bdae6932d1f539a` |
| 55 | `theorem` | [HasBasis.ge_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-ge-iff.md) | 371 | `result-track:72e40dc14f2b7cd230f1fdba1d7bdc19658c754cf1fad544df8a1d7a121f3eea` |
| 56 | `theorem` | [HasBasis.le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-le-iff.md) | 376 | `result-track:71117d40b60c1645dab47c1db02a99eb0238a0e3db221478f09c88dd2e922f63` |
| 57 | `theorem` | [HasBasis.le_basis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-le-basis-iff.md) | 379 | `result-track:03641378e2cc42c368a1a2f5c61bddea4947d63e221b35b83c4317ef50f96dc3` |
| 58 | `theorem` | [HasBasis.ext](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-ext.md) | 383 | `result-track:6a28e76fc8463ce312384cce095a3c53d1bb0b6f42a98f4d93a32838a8329c28` |
| 59 | `theorem` | [HasBasis.inf'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf-source-edition-2.md) | 392 | `result-track:996c60786c5cbba2e399944fff5a71dad812859f125a8323551b3b177fedfefd` |
| 60 | `theorem` | [HasBasis.inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf.md) | 403 | `result-track:45b55117c522aa58b4fbad44d7e997750d6d7fb0a7c488c34f5338178e43e80f` |
| 61 | `theorem` | [hasBasis_iInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-iinf-of-directed-source-edition-2.md) | 408 | `result-track:b531020fade300c5f4fa235778ef5a02cf96af6afebadbca6e054611e939983c` |
| 62 | `theorem` | [hasBasis_iInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-iinf-of-directed.md) | 416 | `result-track:9165a0ef425f81f6723a17ce6acf84455d665124d47b7d662b406d90ff4841b1` |
| 63 | `theorem` | [hasBasis_biInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinf-of-directed.md) | 424 | `result-track:5fd5b2aaf6d39ab508de77406b7aca33e0b7131a7f2c20bb159768f7e09ca482` |
| 64 | `theorem` | [hasBasis_biInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinf-of-directed-source-edition-2.md) | 438 | `result-track:a89187e494d9613cc2db620ea4a6886d8d4389fda7f0b922d9c2e02c3d67b4a2` |
| 65 | `theorem` | [hasBasis_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-principal.md) | 452 | `result-track:8e16fd2df215ef9d19bb85ffee92ac3ef3e307136efdde533e7e4747b8bbcbe1` |
| 66 | `theorem` | [hasBasis_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-pure.md) | 455 | `result-track:13e41c78fdc777b80afad40add4e55554da9f4c5a688cf9197456dc8e2cc9cef` |
| 67 | `theorem` | [HasBasis.sup'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-sup.md) | 459 | `result-track:29d729f50d1e96142f33fc42038383171dd5b735f6c270167dece2b95e3d59ac` |
| 68 | `theorem` | [HasBasis.sup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-sup-source-edition-2.md) | 467 | `result-track:2ca702ca488ffdb380261eefbcf56301087a9c8614edc3f7b107599fa6c90688` |
| 69 | `theorem` | [hasBasis_iSup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-isup.md) | 472 | `result-track:0b6195656db2cb091c8218d101763eaea034ead71ebf159a0f58df79bc97f86d` |
| 70 | `theorem` | [HasBasis.sup_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-sup-principal.md) | 479 | `result-track:129ab1f5996297a0711d90a911f3a30942ab2df09c1ef95074e7c6a332f18408` |
| 71 | `theorem` | [HasBasis.sup_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-sup-pure.md) | 485 | `result-track:61dd9d75f152bcf423ff88cd1f80ea32c2817579faacd013e0b40da10ee26a47` |
| 72 | `theorem` | [HasBasis.inf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf-principal.md) | 489 | `result-track:42f05b5fd88063a207728765da6230d1fb86f955a2f92d122b6a96f4fd70f97f` |
| 73 | `theorem` | [HasBasis.principal_inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-principal-inf.md) | 494 | `result-track:acc07c113a788123c5a87da00df35a08dd6db5a055304c700bbeadc1f4261a5d` |
| 74 | `theorem` | [HasBasis.inf_basis_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf-basis-nebot-iff.md) | 498 | `result-track:deb5e76b2280129bd66d3d6bf6b2c55537ef9867dc31841b0201018450530a66` |
| 75 | `theorem` | [HasBasis.inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf-nebot-iff.md) | 502 | `result-track:f0361358f92c9cb8fb8a518d47bb466cc2faf40832e7c4c83365b5b99f43e51e` |
| 76 | `theorem` | [HasBasis.inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-inf-principal-nebot-iff.md) | 506 | `result-track:71b56734547b322bd36c594ee3fa85cc551b7871f3f31911e487522da57431bf` |
| 77 | `theorem` | [HasBasis.disjoint_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-disjoint-iff.md) | 510 | `result-track:1d9685e56f96f137b71d46f14378997cca5c309cc490a3cc9afd42cc5e0ff385` |
| 78 | `theorem` | [Bases Basic Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/exists-mem-filter-basis.md) | 515 | `result-track:919a574c370cd19a75f26ecce2ad2788f84bf60cc7236dfb6f32ce638dbf7046` |
| 79 | `theorem` | [inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/inf-nebot-iff.md) | 519 | `result-track:2539d1dcdc32da200ccc31743b28d0108642ae029008ad1f04e02afb6f7f1b1d` |
| 80 | `theorem` | [inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/inf-principal-nebot-iff.md) | 523 | `result-track:e76723011aa4b1b1a50dc6e1a73619fc0560f812fa06eaeda6ea430cf62587b4` |
| 81 | `theorem` | [mem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-iff-inf-principal-compl.md) | 526 | `result-track:44a2d0edd864a391852552b96a801f75ca351cd899d95009c72f197154688189` |
| 82 | `theorem` | [notMem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/notmem-iff-inf-principal-compl.md) | 532 | `result-track:ac8cc539bb6ddbc3e60e95eb39f2a478ee9b72d3d1e24b71f069ec124eb3c435` |
| 83 | `theorem` | [disjoint_principal_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/disjoint-principal-right.md) | 539 | `result-track:b49c74f377cb483d581d2d89c62ae95815b307af74c826184eafdc758e844f60` |
| 84 | `theorem` | [disjoint_principal_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/disjoint-principal-left.md) | 543 | `result-track:26713d4f0faefe5be9a15f90bca18fa4d746fe175f84db761d2241995b80f0b9` |
| 85 | `theorem` | [disjoint_principal_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/disjoint-principal-principal.md) | 547 | `result-track:7af502e6db64d2d5b49b9f51f360cc9172f460c60eaab8ed741f4359b24a71f4` |
| 86 | `theorem` | [disjoint_pure_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/disjoint-pure-pure.md) | 553 | `result-track:d9353e599cb2ad530db6568caf44cf289f58c7693ab04f39ab3fc5f97b797823` |
| 87 | `theorem` | [HasBasis.disjoint_iff_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-disjoint-iff-left.md) | 556 | `result-track:6949b86a89bd95862191400c5f523f69c79014f838e55957bbc2f8e37bf5b305` |
| 88 | `theorem` | [HasBasis.disjoint_iff_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-disjoint-iff-right.md) | 561 | `result-track:3cb45c9c5f6d1c2bc0c71c8869f424d6c2f5e3e201a73f5d17a894c4c289a214` |
| 89 | `theorem` | [le_iff_forall_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/le-iff-forall-inf-principal-compl.md) | 565 | `result-track:512693b30e42cb527efe00a7413519df341c53295518d054a0689e70dafe92f5` |
| 90 | `theorem` | [inf_neBot_iff_frequently_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/inf-nebot-iff-frequently-left.md) | 568 | `result-track:e87bcc6b5ac11aa7f18972cc926971605de2812d7fcd7f26eede14e9c6118fa9` |
| 91 | `theorem` | [inf_neBot_iff_frequently_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/inf-nebot-iff-frequently-right.md) | 572 | `result-track:e3c61d10943b41f89a816229264a51d07c16ba54c76a02266c88f0e1cc1a935f` |
| 92 | `theorem` | [HasBasis.eq_biInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eq-biinf.md) | 577 | `result-track:879cbef0e974d7fd4b37fe738cb230a605e76a03ad3d6076001ad69f023dca9f` |
| 93 | `theorem` | [HasBasis.eq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-eq-iinf.md) | 580 | `result-track:1b097ec55a2b127d35ede18ed4b8a757d791ccc15e6d415d72c91d463d709185` |
| 94 | `theorem` | [hasBasis_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-iinf-principal.md) | 583 | `result-track:0c55caf381ce118c59c5979b474a726fa20ae21cb93232248af443289da2049d` |
| 95 | `theorem` | [hasBasis_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinf-principal-source-edition-2.md) | 588 | `result-track:c1d01fe5adb32f706596c05dafa0f137649c194934c94d989e0d012ccd63f951` |
| 96 | `theorem` | [hasBasis_biInf_principal'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinf-principal.md) | 596 | `result-track:96313a3073dc3f66f0bba8d5da0a7b2affd87463760007d011ea220486cae098` |
| 97 | `theorem` | [HasBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-map.md) | 601 | `result-track:64b2f61dd80fe3e929e853fc84f280ec911aacf56bf35f12ae3e946d313955c8` |
| 98 | `theorem` | [HasBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-comap.md) | 604 | `result-track:26967251cfb706b8737c703b49de575535c6588ed017b51cc16a1f81d0138927` |
| 99 | `theorem` | [comap_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/comap-hasbasis.md) | 611 | `result-track:17ef4715dabea55640a71ce99e49482dac627b5129f15b06cea209acc6266aab` |
| 100 | `theorem` | [HasBasis.forall_mem_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-forall-mem-mem.md) | 615 | `result-track:58542f1e64e08e7130c7161a2fc06f91bd3d7d32867cc37789e0e2c1714cb5b9` |
| 101 | `theorem` | [HasBasis.biInf_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinf-mem.md) | 620 | `result-track:91bc8c499ac44b5e7b3ff74682f8aad842b274f4b87d9e63859fc6445070cc04` |
| 102 | `theorem` | [HasBasis.biInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-biinter-mem.md) | 627 | `result-track:fdf65bd8159adb052ed170d7f7f38f61238df008115a68efea7e8880918be009` |
| 103 | `theorem` | [HasBasis.ker](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-ker.md) | 631 | `result-track:1b7d47d1ea1d523ae14415e3db0a4c4cd0824934edc0d3b32e97d1e56edcc9bd` |
| 104 | `structure` | [IsAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/isantitonebasis.md) | 637 | `declaration-track:2e445f19aa7827f9dc4498e3a643078f99be15b7031af957a62ece4855d30ff7` |
| 105 | `structure` | [HasAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasantitonebasis.md) | 643 | `declaration-track:a2bb02b6145747709e183fb320e9c00447d89db52755968aab54db8962c66168` |
| 106 | `theorem` | [HasAntitoneBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasantitonebasis-map.md) | 648 | `result-track:bbb1ef3428247b5da607c1b941048ce7b8c645543343abee20dfa56817ab98e0` |
| 107 | `theorem` | [HasAntitoneBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasantitonebasis-comap.md) | 652 | `result-track:3e484d83df9aad7e1c07144dca277250b93202440bf58970e6ec759e7e112943` |
| 108 | `lemma` | [HasAntitoneBasis.iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasantitonebasis-iinf-principal.md) | 656 | `result-track:340648e42cb421fb707c07687bd7226af92b606d5c775ab62bfedee622b5a321` |
| 109 | `theorem` | [HasBasis.tendsto_left_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-tendsto-left-iff.md) | 667 | `result-track:a31bea02f29a8e9ea1196fe9d34bf8c698bf5ddbcbd5c881d2d1938f07519483` |
| 110 | `theorem` | [HasBasis.tendsto_right_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-tendsto-right-iff.md) | 672 | `result-track:16277767793b41bff043f441913596990ae3d79c71ddfde5e0df8b22a23a19f9` |
| 111 | `theorem` | [HasBasis.tendsto_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-tendsto-iff.md) | 676 | `result-track:c265b2c069672d90db60dd39c1ac835c5251d572d0807b92173c2dcc85dfb00f` |
| 112 | `theorem` | [Tendsto.basis_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/tendsto-basis-left.md) | 680 | `result-track:6661b27988e43e060a8c7a444af4da013c073f74784090ce7730050031086604` |
| 113 | `theorem` | [Tendsto.basis_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/tendsto-basis-right.md) | 684 | `result-track:bec15c02877b258eef918d161af364bcb87db7b51839e914f23b91157bc78d90` |
| 114 | `theorem` | [Tendsto.basis_both](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/tendsto-basis-both.md) | 688 | `result-track:3b1dac7c4de22e761511d3bbbfc3cf09615ef99a751e4aba86923bef491d3778` |
| 115 | `theorem` | [HasBasis.prod_pprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-pprod.md) | 693 | `result-track:2ef90955deafc8a19f2dee680b37aa0cf87dbaa8701fe9e765d68ce9589a0cc2` |
| 116 | `theorem` | [HasBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod.md) | 697 | `result-track:fc0e209d138ea3f21af83ed48361cfd7f40e553269ecb15ed233c6221da55dd4` |
| 117 | `theorem` | [HasBasis.principal_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-principal-prod.md) | 702 | `result-track:3977a630641c1afa84ce833898949c25696cac253c856f3f89e6df7458f135c4` |
| 118 | `theorem` | [HasBasis.prod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-principal.md) | 706 | `result-track:5abfba94b7ad810ed125046ffea36a2ee2f73d7f1efb30f25e22b66e1647d2b2` |
| 119 | `theorem` | [HasBasis.top_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-top-prod.md) | 710 | `result-track:03e3724c2728848c33e85d171cb803f728b391e2ad75efa312ec0f6b666c5b05` |
| 120 | `theorem` | [HasBasis.prod_top](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-top.md) | 714 | `result-track:ad6f24b3e881acd6744b6f00fbae29146c4e57792d1e2673352c82e2e4f53b60` |
| 121 | `theorem` | [HasBasis.prod_same_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-same-index.md) | 718 | `result-track:38ec42df000ce468e944097c7375f3ed70771ac23ee6d6732a11fde2261ee507` |
| 122 | `theorem` | [HasBasis.prod_same_index_mono](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-same-index-mono.md) | 729 | `result-track:e4b135d3a03d0d84b3556f59fafefc2ccf69f371f101c67ea93f3c1bf91e2aee` |
| 123 | `theorem` | [HasBasis.prod_same_index_anti](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-same-index-anti.md) | 737 | `result-track:5bcc93ce7441202c5829b1ae74fe6a0a31f32eb7d3464e42cdd710d079569963` |
| 124 | `theorem` | [HasBasis.prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-prod-self.md) | 743 | `result-track:9c7d45b4e029395f20aac6d75971e3359b976ab2923107d0180fcbb765e1eb8e` |
| 125 | `theorem` | [mem_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/mem-prod-self-iff.md) | 749 | `result-track:6fa545a4c4e0a09d8136d518f648ed7bd60da6f422bfd97ff1dca324bac5eb0b` |
| 126 | `lemma` | [eventually_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/eventually-prod-self-iff.md) | 752 | `result-track:9bd96ca676d710d7ed6a33eb99b3c4bddf275b3983f6881f82133369556aa2cf` |
| 127 | `lemma` | [eventually_prod_self_iff'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/eventually-prod-self-iff-source-edition-2.md) | 757 | `result-track:cbf6d6a56f4a88ccbd7669633daf6d05ff2d3bb6c0a72a8e28cc5e1ffa9c592d` |
| 128 | `theorem` | [HasAntitoneBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasantitonebasis-prod.md) | 761 | `result-track:3bf05008842b4008af98bd9ef67ac6dd402ee48796d1a7f60e0bd9d26e966867` |
| 129 | `theorem` | [HasBasis.coprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/hasbasis-coprod.md) | 766 | `result-track:a4de0f86ac5d0438ebd82e48bf52bc2900d14f2bb68da9c60a706a993def04f9` |
| 130 | `theorem` | [map_sigma_mk_comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicNamespaced.lean/declarations/map-sigma-mk-comap.md) | 774 | `result-track:f33da23830bc5f5318e8d646304e5923f273287d7288a414db19d1502cee33d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b6c303959c77c623a9c453a0cadba53ba9210bbfa992c55af22cd03d9a6c959 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantfddb6e91f4a0f402c6b765302004372820fdbad4bf60943f84aba6ccd7f9e8a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
