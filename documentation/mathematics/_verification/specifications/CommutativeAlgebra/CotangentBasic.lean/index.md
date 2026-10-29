# Verification target: Cotangent Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce1d4e0bae9401d8861b341c5370bebbceb5aa56",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CotangentBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CotangentBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce1d4e0bae9401d8861b341c5370bebbceb5aa56`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Kaehler.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.FinitePresentation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Presentation.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CotangentSpace](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspace.md) | 54 | `declaration-track:25991ef91708aedc04c0c3302b856b3aa9f3a3c238294a7fbf5bd663a9abd927` |
| 2 | `def` | [cotangentComplex](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentcomplex.md) | 58 | `declaration-track:bee9e8f4608300f782bf36111b6acf3d6e0044b0eaecc3799d8735ff6697b1e9` |
| 3 | `lemma` | [cotangentComplex_mk](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentcomplex-mk.md) | 64 | `result-track:ccb977231e9b6c4ae9d24a083a116b33762a618dde2e06e015759a2de1b8c411` |
| 4 | `def` | [map](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map.md) | 94 | `declaration-track:7cdab54aba6c53917d3b615b5096013efeec0a414574abafceb7dc93a23c37ab` |
| 5 | `lemma` | [map_tmul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-tmul.md) | 104 | `result-track:cafe1d59ba2523c3ce552ece76eb1bf4959040c437bcc76b19d120987f781db0` |
| 6 | `lemma` | [map_id](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-id.md) | 112 | `result-track:e289b24436d7d17890616a0093d776319386c36d350d11f4a666cf0bd0266b29` |
| 7 | `lemma` | [map_comp](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-comp.md) | 115 | `result-track:c1abcd0b51716a23a2d2f376a23de6ca82a72d28228fcbceb91cc0cfb8a99e13` |
| 8 | `lemma` | [map_comp_apply](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-comp-apply.md) | 136 | `result-track:639422600d0b13de55f141ec008a87ccada5e6d8a11a878bd099185aa6df61b4` |
| 9 | `lemma` | [map_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-cotangentcomplex.md) | 140 | `result-track:4121130c56eab091ba9b9d3d575669f839ee7b18a3600e61852286dd72ed3cfa` |
| 10 | `lemma` | [map_comp_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/map-comp-cotangentcomplex.md) | 145 | `result-track:eaa08d31ed27f716b1e87c0b82b8e5131651956ce13efd4dd0939c6c1e375198` |
| 11 | `lemma` | [Hom.sub_aux](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/hom-sub-aux.md) | 152 | `result-track:5d2fdd771af4e904d2d9c60984b12d8a3ddb98ad6f2966f62d74f260cff93ae7` |
| 12 | `def` | [Hom.subToKer](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/hom-subtoker.md) | 179 | `declaration-track:53c85dc6a591649306164ef61ac50388faa4747c829a6b7bbc43246271d52e06` |
| 13 | `def` | [Hom.sub](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/hom-sub.md) | 194 | `declaration-track:82cac47f97cac7f54423c4698250356a6799f116383c29c4b2ccd085061c6632` |
| 14 | `lemma` | [Hom.sub_one_tmul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/hom-sub-one-tmul.md) | 221 | `result-track:2e740663ed4f0c0adc6cc60124fd63da36cd7283778a049097ceeffd5c9815a1` |
| 15 | `lemma` | [Hom.sub_tmul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/hom-sub-tmul.md) | 228 | `result-track:30c63e3ae909230b12f34dcef1b216bd560cf205b39e479c0bda896abbc8f555` |
| 16 | `lemma` | [CotangentSpace.map_sub_map](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspace-map-sub-map.md) | 233 | `result-track:583f01a5be9da5fcb739c8b2bb6472cc6e16770557d83feeae45ee8e1121279a` |
| 17 | `lemma` | [Cotangent.map_sub_map](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangent-map-sub-map.md) | 255 | `result-track:71e4ce2a4b1396c4aa9f8a376f80808a5c42e72731655d9e71fb35d2229dc18b` |
| 18 | `abbrev` | [toKaehler](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/tokaehler.md) | 270 | `declaration-track:9ab4494fd9086af932b385f896e1fe4be151b0cfb0ae3813286602a4f0435731` |
| 19 | `lemma` | [toKaehler_surjective](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/tokaehler-surjective.md) | 272 | `result-track:a6013fe07cac77114f1773c1ef4afc384877a81dec13acb95a474c0f69a8ce4d` |
| 20 | `lemma` | [exact_cotangentComplex_toKaehler](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/exact-cotangentcomplex-tokaehler.md) | 275 | `result-track:344e2d76f64e685828b2014feb468ec7869cdbd3fc8f5fe51a18d15f7731469c` |
| 21 | `def` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-source-edition-2.md) | 285 | `declaration-track:80982daace00f20da82b82dfd9f2a6667249d9308e3ac5cc00ff5ab45612adfb` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance-source-edition-5.md) | 290 | `declaration-track:f6e8860add4690df9e50b27d1e50f5bb58cb51073b031bf0551e82cd0d20d0dc` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance.md) | 293 | `declaration-track:ad3f93e72e2d8eec523bb46e03fcab9f890b88be716bc70b60fba0514a481e3c` |
| 24 | `lemma` | [H1Cotangent.val_add](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-val-add.md) | 297 | `result-track:5ef7519ad86b3874ce98d28a7a4cba510d6ea41aaebd2307ea4c5ee8b09c2d41` |
| 25 | `lemma` | [H1Cotangent.val_zero](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-val-zero.md) | 298 | `result-track:9082bb528476cf29aa15666eeea84630f6a7d789b856d52d77798fb61d99ae3f` |
| 26 | `lemma` | [H1Cotangent.val_smul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-val-smul.md) | 299 | `result-track:18c1782fa29d89029557517078386acd0b44c65bb34de9e62ae07e4fcf6fcede` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance-source-edition-3.md) | 303 | `declaration-track:b6e4c56f86bbb4fb60ef669328605446e6ed807dc7978bf3a2c6985d802ee423` |
| 28 | `lemma` | [subsingleton_h1Cotangent](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/subsingleton-h1cotangent.md) | 311 | `result-track:3b625803b0aa1f45c4e1e01b3cc04dece21ecb61b9ee63d07625ebe149c2c319` |
| 29 | `def` | [h1Cotangentι](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent.md) | 318 | `declaration-track:6ec0ae3767db3dfb47314e0f72e7c7abeba341718a3e9a3e0174d5334f4eaa2f` |
| 30 | `lemma` | [h1Cotangentι_injective](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-injective.md) | 320 | `result-track:d9f957fd40fc6a81396cf2917cf3000b010b10b647440f727ee7a6e7df25aef7` |
| 31 | `lemma` | [h1Cotangentι_ext](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-ext.md) | 322 | `result-track:33d8a46041572afb0bfb5e1a9dbaa6c64dfea990eabf4f5486e175d73bd17317` |
| 32 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-map-source-edition-2.md) | 329 | `declaration-track:1e82d54c59cf107f3849ccba9e2ae80b285575d3db5c6df33abb0cada3b8c0ff` |
| 33 | `lemma` | [H1Cotangent.map_eq](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-map-eq.md) | 338 | `result-track:a08142c12a5362be292acf94f07b02935b903c808d0afb59abe5729f7edcc0a2` |
| 34 | `lemma` | [H1Cotangent.map_id](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-map-id.md) | 345 | `result-track:3b6e2a5a5b4a0e3c8168df9b94858ae6333e1abf87009f4c924fcdfa6bfd593d` |
| 35 | `lemma` | [H1Cotangent.map_comp](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-map-comp.md) | 348 | `result-track:678f49ffcc02783b464cdf19771c15766c55b3f61b9669fee015f1bd3a2d23ae` |
| 36 | `def` | [H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-equiv.md) | 357 | `declaration-track:9dd6bac3d782f20e642ab637197bf00368fe393efa41409dbeae5938ed902ca2` |
| 37 | `def` | [cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspacebasis.md) | 378 | `declaration-track:05a32039d3c3943ed33288efba897f9d533436204504c2c0eb54fbe940922478` |
| 38 | `lemma` | [cotangentSpaceBasis_repr_tmul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspacebasis-repr-tmul.md) | 382 | `result-track:06c40969c2e337fc3a89bba8f4185fd660754c7ab4b0fef8db46d7abddc59c32` |
| 39 | `lemma` | [cotangentSpaceBasis_repr_one_tmul](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspacebasis-repr-one-tmul.md) | 389 | `result-track:f4b3b8007665458669ad471292427d547fa84e9a92fa092c1b6ae9d0e6282fcf` |
| 40 | `lemma` | [cotangentSpaceBasis_apply](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/cotangentspacebasis-apply.md) | 393 | `result-track:74ba5c20152f5dfe7c41bb23900b7c16cf7c99aefa024387408752cbe74eea4d` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance-source-edition-6.md) | 397 | `declaration-track:fb2582e750b3af0aecb9891e9dddaca9d71dad013d7b49727329fb52cb79b719` |
| 42 | `lemma` | [repr_CotangentSpaceMap](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/repr-cotangentspacemap.md) | 423 | `result-track:5fc34bc8647d8534c79595cfd29458a5f4fb7aa3c4889577e55f53ad1e010f32` |
| 43 | `lemma` | [toKaehler_cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/tokaehler-cotangentspacebasis.md) | 432 | `result-track:5609642ce1a1d6854e35f5903f2311a0811ef2fa8d47666a9530d50107a2b62e` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance-source-edition-2.md) | 442 | `declaration-track:afd7fb613db1abcf928e36c0822fa3d8dd99b9a6900e9763579907e04ccc6c49` |
| 45 | `def` | [Generators.H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/generators-h1cotangent-equiv.md) | 455 | `declaration-track:1e825a24cdf0215225d3545c723811ec7c541444af8ea76e8424f252995cadc1` |
| 46 | `abbrev` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-source-edition-3.md) | 467 | `declaration-track:d02b581b2aa9c885e4f13c607e2dbc5a1dccdddfd53c3e598732abc5db476de0` |
| 47 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-map.md) | 471 | `declaration-track:04da1f52ff62b8557f97b5ce52dfe36863d2a607510ddc40ded1d800be2c9855` |
| 48 | `def` | [H1Cotangent.mapEquiv](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/h1cotangent-mapequiv.md) | 476 | `declaration-track:fdb9f8a18dab7532d43e42df7d1f98cf187e6394d7b8b880e84bf5d44ca488cd` |
| 49 | `abbrev` | [Generators.equivH1Cotangent](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/generators-equivh1cotangent.md) | 502 | `declaration-track:8f2c22ac6ea3b5176921d852d5167d1ee8e5c3a962a21b65b25a4e01ce51d061` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasic.lean/declarations/instance-source-edition-4.md) | 507 | `declaration-track:b91019950b704abb2823605c2a0b2f02b48124458f4b884bc44e79aede424216` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c12132072d29bbad475385a2693da68f9c6cab71bb11c864e00059be7c8be25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
