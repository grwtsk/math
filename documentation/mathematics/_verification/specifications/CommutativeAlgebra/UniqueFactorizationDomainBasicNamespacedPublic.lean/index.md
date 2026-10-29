# Verification target: Unique Factorization Domain Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d759a224f4bc5c91f9f17d304291a7549001fa",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant50449a89966f63458833f798ecf709c6dcd72709ba1e763106dc2f989e8b7f66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d759a224f4bc5c91f9f17d304291a7549001fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant50449a89966f63458833f798ecf709c6dcd72709ba1e763106dc2f989e8b7f66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant50449a89966f63458833f798ecf709c6dcd72709ba1e763106dc2f989e8b7f66.lean.json)

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
| 1 | `theorem` | [of_wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/of-wfdvdmonoid-associates.md) | 54 | `result-track:15945d1901b61f44e8d74a5556abb6ba6f0896477affa3d11bffd26ee4e6d384` |
| 2 | `instance` | [wfDvdMonoid_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/wfdvdmonoid-associates.md) | 59 | `declaration-track:a4e9343fa28fa791a9b9b4aa4d37bb29bf1ebb014fe1b529436a9f86fd27c09c` |
| 3 | `theorem` | [wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/wellfoundedlt-associates.md) | 62 | `result-track:fc87641989f9596d1432ced2d7cc066aaccec10a0748a6421502465af350c9e7` |
| 4 | `theorem` | [WfDvdMonoid.of_wellFoundedLT_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/wfdvdmonoid-of-wellfoundedlt-associates.md) | 67 | `result-track:0acd21e5f05276c601c8b1084a8f6bfd0a55befd50aeffa813a92d0eed028b31` |
| 5 | `theorem` | [WfDvdMonoid.iff_wellFounded_associates](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/wfdvdmonoid-iff-wellfounded-associates.md) | 75 | `result-track:800398a197277612457cd0ff697ab0d9b2746a2b5720a24ab623105d337df970` |
| 6 | `instance` | [Associates.ufm](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/associates-ufm.md) | 79 | `declaration-track:ed5694874277238d91410280665b5f5733789762c44ba5444f1b64fbb5d67fec` |
| 7 | `theorem` | [prime_factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/prime-factors-unique.md) | 85 | `result-track:b7d080debffa694ac816ad9f2c2cbf9518f3da4eec753ef4277ff49fcd105b5b` |
| 8 | `theorem` | [factors_unique](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-unique.md) | 116 | `result-track:c5c8080cbd680752c6e26530b171b7ddf2233848565ed26db9b243968ece65dd` |
| 9 | `theorem` | [Unique Factorization Domain Basic Namespaced Public](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-ofwfdvdmonoidassociates.md) | 121 | `result-track:6fee5271817a0cbcb2aa4344ac7ffe245c548971a0177209dcaa7c22a35b3f8e` |
| 10 | `theorem` | [prime_factors_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/prime-factors-irreducible.md) | 134 | `result-track:3658131fc120a812d9c84432d97004c49bfc8442aaf0045fe623fb06d5e3f8d7` |
| 11 | `theorem` | [irreducible_iff_prime_of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/irreducible-iff-prime-of-existsunique-irreducible-factors.md) | 155 | `result-track:286736729aeecdd35a9bcca369d9618685daeaf0a9ee3f66a5126cfd49bc738c` |
| 12 | `theorem` | [factors_one](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-one.md) | 202 | `result-track:a0945846bbad2425c2eb5c20d77d35fec2e4547ea615d25cc6548902e7e35c22` |
| 13 | `theorem` | [exists_mem_factors_of_dvd](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/exists-mem-factors-of-dvd.md) | 209 | `result-track:9ff03c10093ea65ed157f2efc5e283c052c0c478b3d1e26c8bce6a5dd7f27db0` |
| 14 | `theorem` | [exists_mem_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/exists-mem-factors.md) | 224 | `result-track:0363eb7ac0cc778327843cf092871298c3b5acf6c7fd1474040ca9ccb495fae4` |
| 15 | `theorem` | [factors_eq_singleton_of_irreducible](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-eq-singleton-of-irreducible.md) | 229 | `result-track:695f05b71d18ff960de195d52a4d7682c422faf35c39af7f21ed30b8e9005367` |
| 16 | `theorem` | [factors_mul](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-mul.md) | 235 | `result-track:68b5f3cceb1a2da5b86a0f561b2016fda5499456fc454a74ec383348164bdb4f` |
| 17 | `theorem` | [factors_pow](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-pow.md) | 246 | `result-track:89386ed3a33bbc8b7909277c61ef8ebee0be26bd11e6b59840bdf4445886aba3` |
| 18 | `theorem` | [factors_pow_count_prod](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-pow-count-prod.md) | 258 | `result-track:dc5b96dac41f11b3ef9ccfa630f5ebf0c17eed1e69e3b099fbaf9af37b05663b` |
| 19 | `theorem` | [factors_rel_of_associated](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-rel-of-associated.md) | 266 | `result-track:9296c5d62fbc00fd2495d740f34009e9ef2b86d451b741b3208dfd075876da9d` |
| 20 | `theorem` | [factors_of_isUnit](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-of-isunit.md) | 273 | `result-track:07f6e5a0627911effa720c2bfb844baef4955e56c2b142f5699e8fc29d7681d8` |
| 21 | `theorem` | [factors_eq_zero](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-eq-zero.md) | 277 | `result-track:8ffe48147714cd50acdd6ccb5e08a113e1906d139951f8b0d4d4cae9be14728d` |
| 22 | `theorem` | [factors_pos](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/factors-pos.md) | 282 | `result-track:eebd8c7d137b3487fe03039c4f28a477b94ade0e6a57e1a4092bb4e2813fb00d` |
| 23 | `theorem` | [unique'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/unique.md) | 296 | `result-track:0b7cd114cd71fb115a957d680c07a82a11052c4f6d15841d12726d8c421ff68d` |
| 24 | `theorem` | [prod_le_prod_iff_le](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/prod-le-prod-iff-le.md) | 307 | `result-track:269554990db4fb693465a8ed217a1758db1b38e9fe66fabcd0cb5c1878877761` |
| 25 | `theorem` | [WfDvdMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/wfdvdmonoid-of-exists-prime-factors.md) | 329 | `result-track:7d9649dcba739498be7d1f30fe20350344f384a3b965f74f5e971120fa4cb8fc` |
| 26 | `theorem` | [irreducible_iff_prime_of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/irreducible-iff-prime-of-exists-prime-factors.md) | 366 | `result-track:1ec2090863474e34d28f3615b685fef77d0031d91c83f1f85417bcbb45a268dd` |
| 27 | `theorem` | [UniqueFactorizationMonoid.of_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/uniquefactorizationmonoid-of-exists-prime-factors.md) | 375 | `result-track:25cd57e159df1073d4515d3a68a897f44a7f3b1a961eaf385ba6036bd7119916` |
| 28 | `theorem` | [UniqueFactorizationMonoid.iff_exists_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/uniquefactorizationmonoid-iff-exists-prime-factors.md) | 381 | `result-track:3da1f7449aa55048fe46db5699f63faf2d94553784bb6213480d6046e5e093eb` |
| 29 | `theorem` | [MulEquiv.uniqueFactorizationMonoid](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/mulequiv-uniquefactorizationmonoid.md) | 392 | `result-track:c0a2fcfdddbc891981d9710a521e1340c67efc161bcdf99fafab5584edabf9c1` |
| 30 | `theorem` | [MulEquiv.uniqueFactorizationMonoid_iff](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/mulequiv-uniquefactorizationmonoid-iff.md) | 411 | `result-track:7e8ad70d16a7e41249d94e3d8e36b68157e40ef0d10c575f1e32617cb68073e4` |
| 31 | `theorem` | [of_existsUnique_irreducible_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/of-existsunique-irreducible-factors.md) | 419 | `result-track:1d3e2c1ecaf63de1525e4a52414e67314ebd25711405dc67bebe7a46d5fbefa4` |
| 32 | `theorem` | [isRelPrime_iff_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/isrelprime-iff-no-prime-factors.md) | 433 | `result-track:7a23c97f8746f6b237e5f9b0cbfd71541013b32680c779bfb45928accec15dc2` |
| 33 | `theorem` | [dvd_of_dvd_mul_left_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/dvd-of-dvd-mul-left-of-no-prime-factors.md) | 441 | `result-track:9aa077c40cccb4e26c732c78a123f0ecde8a529d94acde9d503576403a4a44b4` |
| 34 | `theorem` | [dvd_of_dvd_mul_right_of_no_prime_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/dvd-of-dvd-mul-right-of-no-prime-factors.md) | 447 | `result-track:3448f980244094eb9e122884b50379323428f00c57c2bf0362a3d221b760283a` |
| 35 | `theorem` | [exists_reduced_factors](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/exists-reduced-factors.md) | 453 | `result-track:0bf0c61376c7ff094b8de9fd3221d473b1aaf74a7dd86d33e491e29809de06f2` |
| 36 | `theorem` | [exists_reduced_factors'](../../../../CommutativeAlgebra/UniqueFactorizationDomainBasicNamespacedPublic.lean/declarations/exists-reduced-factors-source-edition-2.md) | 481 | `result-track:d46bfc899be68cbb2dc692eccb5579c5a2f6a7ef11b1827ca20e1a0b65a1bd44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11c1c462b4f1c8288b02ef61356e69a743277f33730b4900606bf334c684b701 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant50449a89966f63458833f798ecf709c6dcd72709ba1e763106dc2f989e8b7f66.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant50449a89966f63458833f798ecf709c6dcd72709ba1e763106dc2f989e8b7f66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
