# Verification target: Isotypic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce085983a5352bad50aa339fd51a84ffcd483e68",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce085983a5352bad50aa339fd51a84ffcd483e68`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIsotypicOfType](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype.md) | 64 | `declaration-track:9fbf6a77060a05b36b70b79d04df0c2ff8f68d6af01f03626fe81681b34a3f25` |
| 2 | `def` | [IsIsotypic](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic.md) | 67 | `declaration-track:0b4a918012be075adeadc3b01cd45f5d110059b132199c33a7dbdfe0174ed4b1` |
| 3 | `theorem` | [IsIsotypicOfType.isIsotypic](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-isisotypic.md) | 70 | `result-track:dcdd961e9f3202ed510bbe01694a07eb86ea888d1ea8b1de091caa3a085e7eba` |
| 4 | `theorem` | [IsIsotypicOfType.of_subsingleton](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-of-subsingleton.md) | 74 | `result-track:f11a05f8a01406b5c808e6dcf03c1b669499d78cfd22a6bb219327d91328e370` |
| 5 | `theorem` | [IsIsotypic.of_subsingleton](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-of-subsingleton.md) | 78 | `result-track:dcdf53a697a73b9953c3bfcd4b4d41dc3a83b10d279b543c745caa8bd02e4584` |
| 6 | `theorem` | [IsIsotypicOfType.of_isSimpleModule](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-of-issimplemodule.md) | 81 | `result-track:b3d17a40dbb2e39c10cea24ca0ec30f75463ddf1e0510f655aad35ff0c0ad684` |
| 7 | `theorem` | [IsIsotypic.of_self](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-of-self.md) | 88 | `result-track:86e3af3d1ed5162d927c14e6a09d8dc20dde41a5a5174bffccd45ad31c8eee8c` |
| 8 | `theorem` | [IsIsotypicOfType.of_linearEquiv_type](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-of-linearequiv-type.md) | 98 | `result-track:b19dcb583f10988117e74110ae13f3c87f50534db40bd59730782b734a631409` |
| 9 | `theorem` | [IsIsotypicOfType.of_injective](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-of-injective.md) | 101 | `result-track:720cdd4e863a870ae3644e6aebccbd5fb7cbaf056fa545502837da5b1c732861` |
| 10 | `theorem` | [IsIsotypic.of_injective](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-of-injective.md) | 107 | `result-track:9b5d9c428e69f4b41124c9633fa9dce00825dc2103985b7006d3128d84ca7afd` |
| 11 | `theorem` | [LinearEquiv.isIsotypicOfType_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/linearequiv-isisotypicoftype-iff.md) | 113 | `result-track:02e48fbce871dbe5cd9272152f22bea9ce00fee867f5fae31ed038cd078e06b4` |
| 12 | `theorem` | [LinearEquiv.isIsotypicOfType_iff_type](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/linearequiv-isisotypicoftype-iff-type.md) | 117 | `result-track:4e336c3c42442abe9a8a7369082a3d9d5a1743c032eeffc28b53563f33d4b94e` |
| 13 | `theorem` | [LinearEquiv.isIsotypic_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/linearequiv-isisotypic-iff.md) | 121 | `result-track:14445234bacc59256d6c3716accac3568ea3564ce8b8775dae3fdfcceeafe168` |
| 14 | `theorem` | [isIsotypicOfType_submodule_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-submodule-iff.md) | 125 | `result-track:ac1ce04cddefd20ba269028270a434cbbab62ed9a9e83d3a4c60c3bb3ab3d73e` |
| 15 | `theorem` | [isIsotypic_submodule_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-submodule-iff.md) | 133 | `result-track:a480590ec7a3e996b1b301bfa61a72bcecc35634a5d02da78ccdca7ae0bbcb15` |
| 16 | `theorem` | [IsIsotypicOfType.linearEquiv_finsupp](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-linearequiv-finsupp.md) | 144 | `result-track:f1696f241494792a9d538ff4b11a9e8fef7c6011574130f5d8b6649820ae5c94` |
| 17 | `theorem` | [IsIsotypic.linearEquiv_finsupp](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-linearequiv-finsupp.md) | 150 | `result-track:05a14f33c5dbd74be5c33670e88dba650bd4c57a307ba0df939d8498a485f931` |
| 18 | `theorem` | [IsIsotypicOfType.linearEquiv_fun](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-linearequiv-fun.md) | 159 | `result-track:d918ea68de10cd8c813b059f52ae32037193fb58f6c4234b3992c70d568cfd72` |
| 19 | `theorem` | [IsIsotypic.linearEquiv_fun](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-linearequiv-fun.md) | 165 | `result-track:58ab042931187d846f2000a2369c5662351b52f2c2146da5bd7acfb246c4dda2` |
| 20 | `theorem` | [IsIsotypic.submodule_linearEquiv_fun](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-submodule-linearequiv-fun.md) | 173 | `result-track:62aa65103751d9509c9090b3a8401f874271c07171c457b9a4d5d5ecb43ebea9` |
| 21 | `def` | [isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isotypiccomponent.md) | 186 | `declaration-track:26ed95b4f30762d579bbecb9b28c5eba35a2983e857819adc81fc197e62f2a00` |
| 22 | `def` | [isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isotypiccomponents.md) | 189 | `declaration-track:60be9a9e66c30237f62f65e255b81c0460bce8a460e39d79c47be653e669269b` |
| 23 | `theorem` | [Submodule.le_isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-le-isotypiccomponent.md) | 194 | `result-track:670282780c92e2712c23ea3abda53ee0ca4d688e97573452b4f85eede75d2e34` |
| 24 | `theorem` | [bot_lt_isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/bot-lt-isotypiccomponent.md) | 197 | `result-track:2bf691411f427c3e467de6bff88d1906cef0ea2c93603b06c75b01cf2e0c5029` |
| 25 | `theorem` | [bot_lt_isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/bot-lt-isotypiccomponents.md) | 202 | `result-track:6216001a33400dff1a0ca00a7ccbe7bd02ea11796c7cd80c0ef5039b3afa6193` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:aa66026000394873b7ca0a23983119e7e9e78f37caee7c20f8bb6c526e7a5477` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:646c26e751994adcbfa7d9aa51059034a3781f8decd0e81be31293dfad2a788c` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 214 | `declaration-track:6677da19cdf2138081e785cf199321171bd04af495bda359c8f1df6d2022b26d` |
| 29 | `theorem` | [LinearEquiv.isotypicComponent_eq](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/linearequiv-isotypiccomponent-eq.md) | 218 | `result-track:d31d0f8507c345294f6c5513544e196b362ea21127dc7875f1bbe2ea08d18e3c` |
| 30 | `theorem` | [Submodule.le_linearEquiv_of_sSup_eq_top](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-le-linearequiv-of-ssup-eq-top.md) | 227 | `result-track:6f3e194e7f2b782782a5f0f2f135ef40aa488922d1ca5015c423f9da5802d100` |
| 31 | `theorem` | [Submodule.linearEquiv_of_sSup_eq_top](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-linearequiv-of-ssup-eq-top.md) | 236 | `result-track:0bd88767c56440e0bfb77ae88a0b8daf2e56f511dc82ee74052e3d1e6f3d1684` |
| 32 | `theorem` | [Submodule.le_linearEquiv_of_le_sSup](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-le-linearequiv-of-le-ssup.md) | 247 | `result-track:ecc7132625ef899161efbd297d7d508cff2c816240743900293da2bd828bb6e2` |
| 33 | `theorem` | [Submodule.linearEquiv_of_le_sSup](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-linearequiv-of-le-ssup.md) | 259 | `result-track:2d85142cee9e5346223866e2735a3d30b9d7d3571f51df96556dc7f23f792b7e` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 272 | `declaration-track:df13fc7b91fe21049f4223632c826b397eedd65ad2dabca50c172c98bb30616e` |
| 35 | `theorem` | [IsIsotypicOfType.isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-isotypiccomponent.md) | 275 | `result-track:45e4b2a2b2a4fd03a2ba2655d9a5213b4deb7925f83d1f42de35c450578f587b` |
| 36 | `theorem` | [IsIsotypic.isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-isotypiccomponent.md) | 281 | `result-track:24f59458f1ab83c9d8db626d2bf647732eea763644d0cba34726db30f2a7eccc` |
| 37 | `theorem` | [IsIsotypic.isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-isotypiccomponents.md) | 285 | `result-track:ae0a0928395c0defb8e90d66312f4ac5296c49a66231e0851f9a6e5524c1c39a` |
| 38 | `theorem` | [eq_isotypicComponent_of_le](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/eq-isotypiccomponent-of-le.md) | 290 | `result-track:aa8a8113a408896034bb94ad8dcb31a7d99d81f7b5bc5318da7d702c43574dec` |
| 39 | `theorem` | [sSupIndep_isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/ssupindep-isotypiccomponents.md) | 296 | `result-track:989f5aab9519e6741c3f1c701a76e7b9c444fb72d705250992eac358d3efc1dd` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/instance.md) | 310 | `declaration-track:4d8b2fe8235255e40af7b41202730d2d57b156b159eb315e132ed40f3eed1ecc` |
| 41 | `theorem` | [IsIsotypicOfType.of_isotypicComponent_eq_top](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypicoftype-of-isotypiccomponent-eq-top.md) | 315 | `result-track:e78d9f0d6d13b2c6159b253eeb74e7dc1446c909317789b172245e82ed96140d` |
| 42 | `theorem` | [Submodule.map_le_isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/submodule-map-le-isotypiccomponent.md) | 319 | `result-track:8caedeaec43397c7f698208a9d985dc993957d5cf85e021755ebfbadc73d8499` |
| 43 | `theorem` | [LinearMap.le_comap_isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/linearmap-le-comap-isotypiccomponent.md) | 327 | `result-track:a7c592a647aea427e02d971613e8691f08ee16d8ad7946c1280def88cacf01c9` |
| 44 | `def` | [Submodule.IsFullyInvariant](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isfullyinvariant.md) | 342 | `declaration-track:742191e936f0e92e5d7e1ab0c0fb3a7ff49c462ccaca29d4ce93375497d08bfc` |
| 45 | `theorem` | [isFullyInvariant_iff_isTwoSided](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isfullyinvariant-iff-istwosided.md) | 345 | `result-track:4b0903437cf28c9a94e0a96db4d975cec06b78e8416910c0f170a505f3b2a3f4` |
| 46 | `def` | [fullyInvariantSubmodule](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/fullyinvariantsubmodule.md) | 352 | `declaration-track:df1282148cf3942ae8919f0acf00e98b240646285955291204c37241790918a3` |
| 47 | `theorem` | [mem_fullyInvariantSubmodule_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/mem-fullyinvariantsubmodule-iff.md) | 358 | `result-track:60f75a75b437c28e35aef1145ea1a822aa237bcde79b2d534dc7582253e5df3f` |
| 48 | `def` | [iSupIndep.ringEquiv](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isupindep-ringequiv.md) | 370 | `declaration-track:c48ce8c4644f0f00f0eeeef503a32b8485869b3617c34939522b6e1ab6a2c354` |
| 49 | `def` | [iSupIndep.algEquiv](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isupindep-algequiv.md) | 383 | `declaration-track:23fbcb2627dadf4e16d3c2ee6e7357e5ff6bbb9c3d69e9d12ca81e51910a62c0` |
| 50 | `theorem` | [Submodule.IsFullyInvariant.isotypicComponent](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isotypiccomponent-source-line-391-occurrence-2.md) | 391 | `result-track:a10e6c6ebbaf7599f09473f0e23b01661dd41a499c3b7b6d9a2783992f2ec237` |
| 51 | `theorem` | [Submodule.IsFullyInvariant.of_mem_isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/of-mem-isotypiccomponents.md) | 395 | `result-track:196f1a1651880bb4d0c5493e4f41d558ce4eab40119f8658856fa17790f8b965` |
| 52 | `def` | [GaloisCoinsertion.setIsotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/galoiscoinsertion-setisotypiccomponents.md) | 401 | `declaration-track:c36aaf96e8112b3c180c92b517b6c1db3415d25d62453c51e08ebfca1d65bca4` |
| 53 | `theorem` | [le_isotypicComponent_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/le-isotypiccomponent-iff.md) | 410 | `result-track:ea04ba1cb4a2d315a36b9499c69dd0fa5f4d2f9b53ca69d440178d5ba02f247b` |
| 54 | `theorem` | [isotypicComponent_eq_top_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isotypiccomponent-eq-top-iff.md) | 416 | `result-track:bb09cb4315e92ce15d690df0d800026dac58302f15cc976dfcfdc18978e75c6d` |
| 55 | `theorem` | [isFullyInvariant_iff_le_imp_isotypicComponent_le](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isfullyinvariant-iff-le-imp-isotypiccomponent-le.md) | 421 | `result-track:03180e4c1d5bc58063123ae080c96a2a79590ebf78182db569975ca976a03c46` |
| 56 | `theorem` | [eq_isotypicComponent_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/eq-isotypiccomponent-iff.md) | 431 | `result-track:c877ebf1e8806294807a3b4db8fed4b294c8c833517cad423edcde56b979b56a` |
| 57 | `theorem` | [isIsotypic_iff_isFullyInvariant_imp_bot_or_top](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isisotypic-iff-isfullyinvariant-imp-bot-or-top.md) | 445 | `result-track:bc91831c22683a7536895bd76d6c3a343e2c6501e22256ebe3c92dc8fee8a0b5` |
| 58 | `theorem` | [mem_isotypicComponents_iff](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/mem-isotypiccomponents-iff.md) | 453 | `result-track:7c96c013b3e335831655736f1b37fd47055d9737c6b19e1b34a58f707dd64092` |
| 59 | `def` | [OrderIso.setIsotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/orderiso-setisotypiccomponents.md) | 464 | `declaration-track:9af50324ad912254614d67f338d75e88f3767a4704ea0b31fa511796ecfffbb7` |
| 60 | `theorem` | [isFullyInvariant_iff_sSup_isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/isfullyinvariant-iff-ssup-isotypiccomponents.md) | 476 | `result-track:d4f1844086a50ac0de9557cdf9d9c218856eeb9c0de9a1d174cba36431c17de9` |
| 61 | `theorem` | [sSup_isotypicComponents](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/ssup-isotypiccomponents.md) | 486 | `result-track:99cec2970b9a3abd8d626d893c7e9ac91ea3e0b2301560a0a400c146006c5a13` |
| 62 | `def` | [endAlgEquiv](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/endalgequiv.md) | 497 | `declaration-track:7d783de60678fc3d02b24192af42c86fe4127686676b69bb32cd803f69194b1f` |
| 63 | `def` | [endRingEquiv](../../../../CommutativeAlgebra/IsotypicNamespacedPublic.lean/declarations/endringequiv.md) | 504 | `declaration-track:a58151475151c47c4481780c8a866b9b9d2ceeff5ca2151015c160400734226d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1c1c6c2304cc49e5e5fabe7fcce914765fb651cbdad0bb04efc98ff0e1048cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Isotypic/Variant64715fc633b2dd78e296dc317e0d7ea90619e293fbc82ae92077bbf201575bcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
