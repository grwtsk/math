# Verification target: Weight Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14321222c0e99f5488ec562ad3e89e4ad4758a5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantea22b70af2e5976437b3e01334e70a7d729e424024fc4a70987936f37be8b96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14321222c0e99f5488ec562ad3e89e4ad4758a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantea22b70af2e5976437b3e01334e70a7d729e424024fc4a70987936f37be8b96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Weight/Variantea22b70af2e5976437b3e01334e70a7d729e424024fc4a70987936f37be8b96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight.md) | 82 | `declaration-track:985f6209bf6082c0eb4664a66780862120864783c2e3cbec1c4caddf51f2d0bf` |
| 2 | `theorem` | [weight_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-apply.md) | 85 | `result-track:041f57e9428462678ab1727a7f87d92dd9f11d92041515575f872113796e41e7` |
| 3 | `theorem` | [weight_single_index](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-single-index.md) | 88 | `result-track:f66012e3a40b74a415f5c0369313caf96bd7021fcaef6977561e2f69a43fccbf` |
| 4 | `theorem` | [weight_single_one_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-single-one-apply.md) | 92 | `result-track:14d1b6a2b053e5f37427a8cab46c2ac0250088a3685282dbe97fe57032f9f735` |
| 5 | `theorem` | [weight_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-single.md) | 96 | `result-track:5d769003b6cf587741790cc544d451df1cadb29929c3b93365c1c1fc44a0c291` |
| 6 | `theorem` | [weight_eq_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-eq-sum.md) | 100 | `result-track:61bde26a6a87ca7a6d33470c473ed8ccc9564c62017534b6af848cac1b243391` |
| 7 | `class` | [NonTorsionWeight](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/nontorsionweight.md) | 105 | `declaration-track:2ab8cbf0060d70127dfda5a18558e6b391a6f4efd4cac932866291f88f29b6e4` |
| 8 | `theorem` | [nonTorsionWeight_of](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/nontorsionweight-of.md) | 110 | `result-track:01c74707ba5fee5ca2bf259ecfaca39b7e0904195e46728d8ee44d124beafe27` |
| 9 | `theorem` | [NonTorsionWeight.ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/nontorsionweight-ne-zero.md) | 117 | `result-track:8bf88d6629e25e5695c664d0e0e3490058da48201b61bdeac4119b01e664cd5a` |
| 10 | `lemma` | [weight_sub_single_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-sub-single-add.md) | 124 | `result-track:c2587281ce7e91b0e639c6e151d18f5c774b9ca42b439eaf0a315447eed4bebf` |
| 11 | `theorem` | [le_weight](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/le-weight.md) | 134 | `result-track:f6c0181fcf20e8c9edeeeb42ac42fc10deffd5ecc88015830f022d2ee8f7945c` |
| 12 | `theorem` | [le_weight_of_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/le-weight-of-ne-zero-source-edition-2.md) | 150 | `result-track:9403d17a7bc0d7f31a3cb1d19eb0b8335bf9767e897789d1ad0f4916500a29b0` |
| 13 | `theorem` | [le_weight_of_ne_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/le-weight-of-ne-zero.md) | 169 | `result-track:10a4a167446881fd67e2a18d127969211e58f6496d808a176b07a9ba0a01c1a0` |
| 14 | `theorem` | [weight_eq_zero_iff_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/weight-eq-zero-iff-eq-zero.md) | 173 | `result-track:07bf4f5a87c9f8d49e4c42e6e7229cd5ea99af8cdbbee1317fe0486dd5a85f5b` |
| 15 | `theorem` | [finite_of_nat_weight_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-nat-weight-le.md) | 187 | `result-track:361e74c7ac133432e50430fb2db46852dfa67094c0c992a7f670b41ad111a6c4` |
| 16 | `theorem` | [finite_of_nat_weight_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-nat-weight-lt.md) | 203 | `result-track:6f4c4f2ba71a447ffec99663b47ba3ec373b7b7c9a2ea03add0dfd309a380bd7` |
| 17 | `theorem` | [finite_of_nat_weight_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-nat-weight-eq.md) | 207 | `result-track:a18eb31484301803470352a2225707c2867f2fe483b8e45217aa76d0794ccb2e` |
| 18 | `def` | [degree](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree.md) | 216 | `declaration-track:bdde4b236fdf9d93e38437a48d5ea3bb58634534d626616d422751e2fa2ce927` |
| 19 | `theorem` | [degree_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-apply.md) | 221 | `result-track:e72e1e030e4470acf3638a1a9dc51053734b81db47724a4d45db38fe741e897b` |
| 20 | `theorem` | [degree_eq_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-eq-sum.md) | 223 | `result-track:cb9f408e71b70f1108bf28c17fd90a8958f63459954367b18c4e41b3d0c1e801` |
| 21 | `theorem` | [degree_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-single.md) | 227 | `result-track:865e174a8f1aff681249489596071eec5493fc477bb95c77379ad7c4c22556cf` |
| 22 | `lemma` | [degree_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-eq-zero-iff.md) | 230 | `result-track:e54729d60aedc918224b672d40124841846617bce99099e99aad451313344f14` |
| 23 | `theorem` | [le_degree](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/le-degree.md) | 237 | `result-track:c3f5ac72b810a82b85e75352261b04305e0d735cf6950cf63bce66b7643fb5bd` |
| 24 | `theorem` | [degree_eq_weight_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-eq-weight-one.md) | 246 | `result-track:0fd438e25f3a867e5c41e40223bfcab283b0f5e8e474c39462fbcaf21382f5d3` |
| 25 | `theorem` | [finite_of_degree_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-degree-le.md) | 251 | `result-track:89f954a1cb441ce6c3747d5d316cc2688753aa82bbeff7fa0dfa675f804e292b` |
| 26 | `lemma` | [finite_of_degree_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-degree-lt.md) | 258 | `result-track:b22e8b0b14697107d9799bd9aeaecb557516fb53a41d99b1ad7c1299406a4510` |
| 27 | `lemma` | [finite_of_degree_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/finite-of-degree-eq.md) | 261 | `result-track:e175c1c0a7ec97d07408c329c4c033ffb3c17d8018884471ad752ae28802d26c` |
| 28 | `lemma` | [range_single_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/range-single-one.md) | 264 | `result-track:c0cbab3c8fac71a933bbbae960e441c6061733cbfb8eb41c27615ed98dc9e36d` |
| 29 | `theorem` | [degree_mapDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-mapdomain.md) | 273 | `result-track:5bf54d97f95708eb70c4ab0c0cced5c590b0ef8f561b628bd58da393466fea85` |
| 30 | `theorem` | [degree_comapDomain_le_of_canonicallyOrderedAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-comapdomain-le-of-canonicallyorderedadd.md) | 282 | `result-track:d59a6b79211e0ad7b1020a9e78cb1400e982e84bc7a5118947b032be54bee51f` |
| 31 | `lemma` | [degree_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-mono.md) | 289 | `result-track:224747f3f965326fbd3b1d585ea4126f5276984cc4abadea34ad3f36bd0498be` |
| 32 | `lemma` | [exists_le_degree_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/exists-le-degree-eq.md) | 294 | `result-track:62546797239ab497b564e9ea2cf71c11f7ed8f33f0717328c7327688091618b3` |
| 33 | `lemma` | [degree_preimage_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-preimage-add.md) | 305 | `result-track:09282f2483e9e3e9c003c13b93eec35611f76779cebe4d3fc0670781d9501c67` |
| 34 | `lemma` | [degree_preimage_nsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/degree-preimage-nsmul.md) | 314 | `result-track:085da2787210dc499d2b85a826d0b947ff1bf20398dd1ab2571867d1b3a6c3a7` |
| 35 | `lemma` | [nsmul_single_one_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/nsmul-single-one-image.md) | 320 | `result-track:ae0c23e19c0686afeefc9e22b955c5a46bd7d193350ff02ec154e2a67691926b` |
| 36 | `theorem` | [image_pow_eq_finsuppProd_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/WeightPublic.lean/declarations/image-pow-eq-finsuppprod-image.md) | 336 | `result-track:597a7f5cc627d59bf6de356faba9476ac7f70e7f695cb58af96b0565a9af79dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51a9421152557f3f954f2f423870bc21f1e4b5f5d4a1c3d7640ffccd7f9eb1e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Weight/Variantea22b70af2e5976437b3e01334e70a7d729e424024fc4a70987936f37be8b96c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Weight/Variantea22b70af2e5976437b3e01334e70a7d729e424024fc4a70987936f37be8b96c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
