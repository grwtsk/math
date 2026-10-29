# Verification target: Unique Factorization Domain Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bbced59397d2c9008952c2a088d301478a1ee9a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2735eed8a2ee88ab8e47f466698ab927c3e0f37889659777bca15960e196dd35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bbced59397d2c9008952c2a088d301478a1ee9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2735eed8a2ee88ab8e47f466698ab927c3e0f37889659777bca15960e196dd35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant2735eed8a2ee88ab8e47f466698ab927c3e0f37889659777bca15960e196dd35.lean.json)

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
| 1 | `theorem` | [of_wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/of-wfdvdmonoid-associates.md) | 46 | `result-track:bf6a7a62f85b58f521ce129af2490fbe951529b0e107f231fbac073b040a6cfc` |
| 2 | `instance` | [wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/wfdvdmonoid-associates.md) | 51 | `declaration-track:59d342fad2e3646fa88d025c16dc2297e3e81ba498970ff6862f03d2465b9bfd` |
| 3 | `theorem` | [wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/wellfoundedlt-associates.md) | 54 | `result-track:a695395730d35def98dff5cf2e7269d334310f7fcaf280f78e7e9492396ca508` |
| 4 | `theorem` | [WfDvdMonoid.of_wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/wfdvdmonoid-of-wellfoundedlt-associates.md) | 59 | `result-track:6dbe7b8ea65aa1592627362cb5aaa204501afae7e455ded4dcae7ce2067d3304` |
| 5 | `theorem` | [WfDvdMonoid.iff_wellFounded_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/wfdvdmonoid-iff-wellfounded-associates.md) | 67 | `result-track:5d57c303685ee0896e35de0d9b65093a6fd7165f16a30a99bd2062c3ff925c64` |
| 6 | `instance` | [Associates.ufm](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/associates-ufm.md) | 71 | `declaration-track:480f07f198fea2881766524adc9736c016c25a1b22ba798ae75f548c639039e4` |
| 7 | `theorem` | [prime_factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/prime-factors-unique.md) | 77 | `result-track:035dd14128553312489b38707f86395f0cf5731b75694fb3d7a7b1787f0fcd46` |
| 8 | `theorem` | [factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-unique.md) | 108 | `result-track:fb2e9a196ca27e58aea7e92271cd2a43cd05f8390226adc72ce1cd17eb141171` |
| 9 | `theorem` | [_root_.Associated.card_factors_eq](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/root-associated-card-factors-eq.md) | 113 | `result-track:1284e53aebbb68d27593506279e177fbc9e96cfff8c8501948ce7844196594d9` |
| 10 | `theorem` | [prime_factors_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/prime-factors-irreducible.md) | 126 | `result-track:dc7dbb1c153d50828bb3c83134dc2bac9aeb22455d1329e1b103c0f5c9999206` |
| 11 | `theorem` | [irreducible_iff_prime_of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/irreducible-iff-prime-of-existsunique-irreducible-factors.md) | 147 | `result-track:7699b4826bd9d23201ca6df17ed5bba7f671d99518840dcab10a9200b39ca1cd` |
| 12 | `theorem` | [factors_one](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-one.md) | 194 | `result-track:05a1ce4595463bd9b82bd26c1c6befa173788a318ddf7d6bc21887252e6836ff` |
| 13 | `theorem` | [exists_mem_factors_of_dvd](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/exists-mem-factors-of-dvd.md) | 201 | `result-track:70c3da7549e017b2083b72a9853f7fd62e492c5d01dbf7a1f7746380cf0d5c10` |
| 14 | `theorem` | [exists_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/exists-mem-factors.md) | 216 | `result-track:cc71a692460136032da5befdf571a30d924c22d163915d4feda1e56239d9dcd6` |
| 15 | `theorem` | [factors_eq_singleton_of_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-eq-singleton-of-irreducible.md) | 221 | `result-track:6e7cef221812a1f72cdb500ee88194d7314433a314e5b8ee95136bc259f263b8` |
| 16 | `theorem` | [factors_mul](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-mul.md) | 227 | `result-track:567a0bf772a2ace0bf275b85696417e6d9590cb9acb715b6f1533fc37f895bd7` |
| 17 | `theorem` | [factors_pow](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-pow.md) | 238 | `result-track:b909f57817aeac26b3acb3a12ea76aa95bd40b63eb1c91bd0c7066d00fbda377` |
| 18 | `theorem` | [factors_pow_count_prod](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-pow-count-prod.md) | 250 | `result-track:a89cd180694b9e28c2b5bedcdbba970c329987302c7da58d0842915662e70bd1` |
| 19 | `theorem` | [factors_rel_of_associated](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-rel-of-associated.md) | 258 | `result-track:ba1b5a8dee6c535d9a9dcdcf4cff1998b232a153bcbf61c6204eed90227a9a10` |
| 20 | `theorem` | [factors_of_isUnit](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-of-isunit.md) | 265 | `result-track:e2e35e7a62854e4a0489df02dd516fac7ad40d6d41b2bf0975a0c48301afc373` |
| 21 | `theorem` | [factors_eq_zero](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-eq-zero.md) | 269 | `result-track:e7e142b243054c5daf03437b05b82e6e77830f155f41f0ab16ba32efd1ab7669` |
| 22 | `theorem` | [factors_pos](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/factors-pos.md) | 274 | `result-track:34d2cba147c883d59f5022a6af08c6e8cb9755f88961b8e0b5ce24fc23f7f38f` |
| 23 | `theorem` | [unique'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/unique.md) | 288 | `result-track:f83834809ccbdf0de1e611a6d87157fb6d9119f6c54aabddbbbb9b78e65c6dc7` |
| 24 | `theorem` | [prod_le_prod_iff_le](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/prod-le-prod-iff-le.md) | 299 | `result-track:396d5a72ac2d76e9deef42ab5800d1b450c627e3b1771c8f0efebc8a0b7a44c6` |
| 25 | `theorem` | [WfDvdMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/wfdvdmonoid-of-exists-prime-factors.md) | 321 | `result-track:af08edd70bf2d7187f22f7a8613f7a843a9d1573ee849374394f1e5fbf9aef64` |
| 26 | `theorem` | [irreducible_iff_prime_of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/irreducible-iff-prime-of-exists-prime-factors.md) | 358 | `result-track:af27123f3f8624de65c91cb4c79aa599f9f5b0b66040ec86a6cf1cab5c2f2136` |
| 27 | `theorem` | [UniqueFactorizationMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/uniquefactorizationmonoid-of-exists-prime-factors.md) | 367 | `result-track:811bffe0ad645a442d6342ce0db853996cced669000818b38d9f9d3fa211777c` |
| 28 | `theorem` | [UniqueFactorizationMonoid.iff_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/uniquefactorizationmonoid-iff-exists-prime-factors.md) | 373 | `result-track:2cf9c6bbc5448bfcfeb3c1e8d12567672bf2cff67524a674ef6375edb780e73b` |
| 29 | `theorem` | [MulEquiv.uniqueFactorizationMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/mulequiv-uniquefactorizationmonoid.md) | 384 | `result-track:f87e1ff1085d1275ed8f846b7abe42a87425ccb8baa1977a9d29a433fbf291ad` |
| 30 | `theorem` | [MulEquiv.uniqueFactorizationMonoid_iff](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/mulequiv-uniquefactorizationmonoid-iff.md) | 403 | `result-track:4079718cc7713fa64de7348b60a68a761dbae01ac51ca3fdb3d516f390e51555` |
| 31 | `theorem` | [of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/of-existsunique-irreducible-factors.md) | 411 | `result-track:65a67bea168938ec2d5eb235fd8136f3183ecc6c9e69853c715bfeb83fece1d7` |
| 32 | `theorem` | [isRelPrime_iff_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/isrelprime-iff-no-prime-factors.md) | 425 | `result-track:fdf9a9e7e0c88581c31aea9655761a8d7835440fc4fa855275b1d4a84383c780` |
| 33 | `theorem` | [dvd_of_dvd_mul_left_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/dvd-of-dvd-mul-left-of-no-prime-factors.md) | 433 | `result-track:c8b512ef50a63ed07a6077a65b7e0c6a34e97a7ba99c75eba8d50aabe0bf30d7` |
| 34 | `theorem` | [dvd_of_dvd_mul_right_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/dvd-of-dvd-mul-right-of-no-prime-factors.md) | 439 | `result-track:3a37c452e9bd8ab9a3a137f5754f1cb159ac25eb1334b7e9b0eb8f481d79bb54` |
| 35 | `theorem` | [exists_reduced_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/exists-reduced-factors-source-edition-2.md) | 445 | `result-track:da94dc9d98a39f2071b46338e5a43536adb2b85f0f90bda265d4169520794741` |
| 36 | `theorem` | [exists_reduced_factors'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicPublic.lean/declarations/exists-reduced-factors.md) | 473 | `result-track:6548e230967c02436cdc79e32e8bd0c2722877732d38fe27513a2a2307bc5a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d668bcf37064db00b54227d2de780962d7a1380fa791392c6604889f5544ece4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2735eed8a2ee88ab8e47f466698ab927c3e0f37889659777bca15960e196dd35.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant2735eed8a2ee88ab8e47f466698ab927c3e0f37889659777bca15960e196dd35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
