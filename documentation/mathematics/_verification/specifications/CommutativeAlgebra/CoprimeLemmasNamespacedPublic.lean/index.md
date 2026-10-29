# Verification target: Coprime Lemmas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f28eff16d7e62d405d62a4d293ead0ca382faa",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant602279c07b9b4b531ef5b1ad79ab5f7c1c4be78943054a2db2f2d81e210707a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f28eff16d7e62d405d62a4d293ead0ca382faa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant602279c07b9b4b531ef5b1ad79ab5f7c1c4be78943054a2db2f2d81e210707a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant602279c07b9b4b531ef5b1ad79ab5f7c1c4be78943054a2db2f2d81e210707a4.lean.json)

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
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/int-iscoprime-iff-gcd-eq-one.md) | 46 | `result-track:5bf4f9c9a2563c25e65da8eb549736694e20b2662ed14867aebbf8d528b75d7b` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/instance.md) | 55 | `declaration-track:5db5054af486d5145f0b1acc173856ac959a6059b7482f8e38b6e28fbd78e326` |
| 3 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/nat-iscoprime-iff-coprime.md) | 59 | `result-track:7e9083a84848a6be425df6c4c1712fa1b48d33cc551655e4f2a0bdc70a395696` |
| 4 | `theorem` | [Nat.Coprime.cast](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/nat-coprime-cast.md) | 64 | `result-track:c244da4f365cc67f01cc395c5bcb2a9c3dbff13fc0bef268c2bf72a863be4000` |
| 5 | `theorem` | [Rat.isCoprime_num_den](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/rat-iscoprime-num-den.md) | 68 | `result-track:2f815526900fc7c718a6263fafdd7bd861e6b8c7828c1a2e5d91395c68871b43` |
| 6 | `theorem` | [Int.isCoprime_gcdA](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/int-iscoprime-gcda.md) | 71 | `result-track:f5e7fb9f1acb83e59c1b5196c83ecc3d4b0547544f0b6dc112c2dbdf6d3b9329` |
| 7 | `theorem` | [Int.isCoprime_gcdB](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/int-iscoprime-gcdb.md) | 75 | `result-track:da44f3b4315f90a3e1f966fa74c9b3c2481e3e909cf8835d22b017173f94aaa4` |
| 8 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime.md) | 79 | `result-track:3ae5b0770b789c8a0d457d13f20027f7bab41dea4186a6056a443eb2e440ff6d` |
| 9 | `theorem` | [IsCoprime.prod_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-prod-left.md) | 84 | `result-track:b1c8d6f552e31768fa6c3e11fad806f57dcac57e4925fd85dfa4272467fb5ce2` |
| 10 | `theorem` | [IsCoprime.prod_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-prod-right.md) | 92 | `result-track:e490bc5b1b00ba4deb63c9a8938ce06dd08f18bf15b0bc864585c2c33983587a` |
| 11 | `theorem` | [IsCoprime.prod_left_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-prod-left-iff.md) | 95 | `result-track:d86cf285cacb79d34eff6d52bfc9703f8f022cdda345d63a947fe44eb05069d0` |
| 12 | `theorem` | [IsCoprime.prod_right_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-prod-right-iff.md) | 100 | `result-track:2a3574cc1924be2229d65d569a68234818149485edc1a161b80d72ca77728818` |
| 13 | `theorem` | [IsCoprime.of_prod_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-of-prod-left.md) | 103 | `result-track:46f5739220e1ca93e561a85ebb876a3fe974808034f87964d90aa363f1bc80d9` |
| 14 | `theorem` | [IsCoprime.of_prod_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-of-prod-right.md) | 107 | `result-track:88f1dad60d90ee9f9546ca01fb6bb6dd66b40bd879085bb1ae2c0c72c808496b` |
| 15 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/finset-prod-dvd-of-coprime.md) | 111 | `result-track:03a7166f70ffee70b62acff5aed0d478461e88bc11e0f11ff5b68fba092a2a1b` |
| 16 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/fintype-prod-dvd-of-coprime.md) | 126 | `result-track:fc7a88a7aa5b3b4de206e46bf7c637feb7a02193cd97ab8fe1fe6aa375449383` |
| 17 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime-source-edition-2.md) | 134 | `result-track:d226f351c1519674673c06028d550d6b2003161b37da2a0f46470d85a4954724` |
| 18 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime.md) | 187 | `result-track:854e8f0630c3a25a4dd80964afc68d4a345875450779a444b912c54847947a2d` |
| 19 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pairwise-coprime-iff-coprime-prod.md) | 192 | `result-track:b046da0ea8c5b488e77ed9845dd5b168526b131699b5334db001e9ffe7d36992` |
| 20 | `theorem` | [IsCoprime.pow_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow-left.md) | 204 | `result-track:536b310f2b5ecefe5d410f1a2e551b4282cd1810ba07cd3ff7528816d22fd01a` |
| 21 | `theorem` | [IsCoprime.pow_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow-right.md) | 208 | `result-track:1d3348e131947829bee83b34fd29c442ddddcc5788c8e263032c029c9de25aac` |
| 22 | `theorem` | [IsCoprime.pow](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow.md) | 212 | `result-track:78f39269ed569e2159501dbf254a63e0c9f6484786246af237a65815663e9aab` |
| 23 | `theorem` | [IsCoprime.pow_left_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow-left-iff.md) | 215 | `result-track:3dd0807acabe8b68c515e297018237dc300f043ae60571731542dcc010df34e4` |
| 24 | `theorem` | [IsCoprime.pow_right_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow-right-iff.md) | 220 | `result-track:eaec68cbdcd85f3b68e71d392eb23addae46374e8b07af8b8e644b53c922c943` |
| 25 | `theorem` | [IsCoprime.pow_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/iscoprime-pow-iff.md) | 223 | `result-track:738cf0d3f9a0dbaa1ee5f6fb23683c84b14df5606c76eae405d6bb22f20ef78c` |
| 26 | `theorem` | [IsRelPrime.prod_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-prod-left.md) | 232 | `result-track:42b10114f424fd4c45ec34d32925c819f781057e0e9d087fb7351ffb421f208d` |
| 27 | `theorem` | [IsRelPrime.prod_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-prod-right.md) | 239 | `result-track:56faa6aa638d2eea0ad89e37c024c27d7bb506f401810e2760640e5eab2e00e2` |
| 28 | `theorem` | [IsRelPrime.prod_left_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-prod-left-iff.md) | 242 | `result-track:ba027ac7176fc68d87286591d939692903bcf50cef0ed956ae46ce7257dbe181` |
| 29 | `theorem` | [IsRelPrime.prod_right_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-prod-right-iff.md) | 247 | `result-track:b46bc4bdeb16a12114bad5e94165323a3582919fa34a43324a12a205ad990c68` |
| 30 | `theorem` | [IsRelPrime.of_prod_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-of-prod-left.md) | 250 | `result-track:f8943cce37b5ebca1c299803b87a5101ec10b7b3cceb433633132e8edeba8a14` |
| 31 | `theorem` | [IsRelPrime.of_prod_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/isrelprime-of-prod-right.md) | 254 | `result-track:68cc5b1b3825df5dd9384fd3c215e31dbb7d9bc6e54448a45083470af495960b` |
| 32 | `theorem` | [Finset.prod_dvd_of_isRelPrime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/finset-prod-dvd-of-isrelprime.md) | 258 | `result-track:b1497ecb38bea973284929a403dcbf332386da2fdce5db59a616efcbd5068293` |
| 33 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/fintype-prod-dvd-of-isrelprime.md) | 274 | `result-track:ed7943a7f8acda05d005287af448875a55288e51673ccf37f61d92ce6fdcaf3c` |
| 34 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pairwise-isrelprime-iff-isrelprime-prod.md) | 278 | `result-track:f4a64a0f5bf85e42927a8422fe3fbbff354aa4ac4288a9db5b7f4b0705a57959` |
| 35 | `theorem` | [pow_left](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow-left.md) | 292 | `result-track:34b98261dbfb5caccd894c241c42d189dc5270c77deca81a1300ebdaebe85757` |
| 36 | `theorem` | [pow_right](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow-right.md) | 296 | `result-track:eb5c3de2aceacab6b537894e849dd4cf2f5003617cd84983bdbf018d0643db73` |
| 37 | `theorem` | [pow](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow.md) | 300 | `result-track:bb6ac12392722be17fe75450f4e1595807b804014833039fbdedcbfca2f0fc90` |
| 38 | `theorem` | [pow_left_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow-left-iff.md) | 303 | `result-track:f42134aa1aa107b94b3b55b371caca70675409ed9e3b48364f50cf49c848f3ae` |
| 39 | `theorem` | [pow_right_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow-right-iff.md) | 308 | `result-track:d52a6b926778eb053cb7e0d3afea994c6f667e37cc40180d6b41c99a1870ac1a` |
| 40 | `theorem` | [pow_iff](../../../../CommutativeAlgebra/CoprimeLemmasNamespacedPublic.lean/declarations/pow-iff.md) | 311 | `result-track:a86b9ee7f85f9110dae390d41614a48ed88e43893790bb7ea5141b2cd1560658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85d51bd38d7c1b50c2ee0a90923478266a5fe04d6bce866e1ad4d31fda4f2eb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant602279c07b9b4b531ef5b1ad79ab5f7c1c4be78943054a2db2f2d81e210707a4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lemmas/Variant602279c07b9b4b531ef5b1ad79ab5f7c1c4be78943054a2db2f2d81e210707a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
