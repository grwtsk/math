# Verification target: Chevalley Complexity Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74718dc11ffddb45334cc21311c76b43aab4ab60",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74718dc11ffddb45334cc21311c76b43aab4ab60`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean.json)

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
| 1 | `abbrev` | [DegreeType](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degreetype.md) | 91 | `declaration-track:1373cc85f5e3e43ea4d701f169e95df53ea0f490c4e5b089ffd6419fff4c98ca` |
| 2 | `structure` | [InductionObj](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/inductionobj.md) | 97 | `declaration-track:96d80362982d88460dd70ec5a700a55be794518fbce8dc4186c3ec4f941edcce` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/instance.md) | 103 | `declaration-track:7667bdb5bb258963e382ef8e29063b8e8f12f006142119f12a1b1ccafcecd921` |
| 4 | `def` | [coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/coeffsubmodule.md) | 111 | `declaration-track:5e668f7998459f5b422d5263622849e02beb9047fea40914a4cd33f3e938f4b9` |
| 5 | `lemma` | [coeffSubmodule_mapRingHom_comp](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/coeffsubmodule-mapringhom-comp.md) | 114 | `result-track:b2191c62508b29c90faa416c4749c56795c3f32f7e0263d1d1e4e4d1a6bf5841` |
| 6 | `lemma` | [coeff_mem_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/coeff-mem-coeffsubmodule.md) | 123 | `result-track:9cb91235f9beb246acac90dc3070caeb32ad6823f214bb3ad248431022528bde` |
| 7 | `lemma` | [one_mem_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/one-mem-coeffsubmodule.md) | 128 | `result-track:9c6481c4f4232a3c6f423949002277739617aa94d3ea02577ce4f614656825da` |
| 8 | `lemma` | [one_le_coeffSubmodule](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/one-le-coeffsubmodule.md) | 131 | `result-track:4577323df216cbfcd1694f249266be34f53d44439224682b2fd48a1fd1434108` |
| 9 | `def` | [degree](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degree.md) | 139 | `declaration-track:8a2a24f08b38aee297c85e14801c0efadf852043cf1c4b6f4df32b460e072d37` |
| 10 | `lemma` | [ofLex_degree_fst](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/oflex-degree-fst.md) | 143 | `result-track:8b0eceda327bedbe5a6b249d230da4a40a2aba226c8ac101363a069c2b15ac65` |
| 11 | `lemma` | [ofLex_degree_snd](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/oflex-degree-snd.md) | 146 | `result-track:d77e396a77a8285bd9498618120df2f755586518904f332552cb8191ca3ef5af` |
| 12 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-source-edition-3.md) | 154 | `declaration-track:a93293c949f60dc574a8ab6b0ea32377e96aee4a028ee70bac20e8beece0d5f9` |
| 13 | `def` | [powBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/powbound.md) | 161 | `declaration-track:d736a652edf8260c72c7cc8adb2f4c276ebdabc236857d7917161da1e3895faf` |
| 14 | `lemma` | [powBound_ne_zero](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/powbound-ne-zero.md) | 164 | `result-track:e4b4bbc05aa849caa45bb3d6dac4dcf7a7ba74e907bf9e3dcc3006507b903286` |
| 15 | `def` | [Statement](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/statement-source-edition-2.md) | 170 | `declaration-track:a228c1f12525cea9ff7b03d8274192d0a4cfb49ad110854ebae5a28fb926d543` |
| 16 | `lemma` | [induction_structure](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/induction-structure.md) | 192 | `result-track:b2ce2bf3995272a1b966e0b497619c235ef25696dc6cbca4f662b0ee0207409e` |
| 17 | `lemma` | [induction_aux](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/induction-aux.md) | 286 | `result-track:e608fb0e06408a15214ed247797c640e3bc9abe96c7607bb6eb7c8bb8e50a035` |
| 18 | `lemma` | [statement](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/statement.md) | 438 | `result-track:7f7eb32b5a1b90cf80b0ed968ee2b079b3336875485f428bcdfadc8289a72e4e` |
| 19 | `lemma` | [chevalley_polynomialC](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/chevalley-polynomialc.md) | 564 | `result-track:b9dd6b4344e879c24b5201fb322905bbf21199a63e967dd36fea715ac5e2cdb8` |
| 20 | `def` | [numBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound.md) | 597 | `declaration-track:3dc127c27decf187fb16ce2532258abe6e58b21b157df919db885db25f734c4d` |
| 21 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-source-edition-2.md) | 603 | `declaration-track:9f4d18a11a4dadc0baa021bdff1020d8f11e4ccd2c6c1ead859e9cc800374c5d` |
| 22 | `lemma` | [degBound_zero](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-zero.md) | 609 | `result-track:e5ce22780bae30cb0cc7a272e07291a3d2b388fe01fb47317b88d1708b27c315` |
| 23 | `lemma` | [numBound_zero](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound-zero.md) | 610 | `result-track:aa91de404acbf40a0a8a41a09c343ef2fe09d9306a770d99cad57a6f0585d55c` |
| 24 | `lemma` | [degBound_succ](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-succ.md) | 613 | `result-track:24552f6d74300b6270fbde29805edf705a99459d49515e05971693191c2b21ff` |
| 25 | `lemma` | [numBound_succ](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound-succ.md) | 618 | `result-track:af3b13440354f1aea05ae6fd6ef40bffb122f6609a55c65b881ca6cfefa1ef42` |
| 26 | `lemma` | [degBound_casesOn_succ](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-caseson-succ.md) | 624 | `result-track:e2c387fc87facc63fda165556441a00c6c348ac037bdc0ede8c0d0607decfb45` |
| 27 | `lemma` | [numBound_casesOn_succ](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound-caseson-succ.md) | 633 | `result-track:be01cfd55b0aac63166f9d6a54e6c1a62408449f8879ca99421ffd6b0eb87a0c` |
| 28 | `lemma` | [degBound_le_degBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-le-degbound.md) | 648 | `result-track:a320c6282f7a55d4229796831e6d054f6952101ac343c64f8fbb0c331cdd0a4f` |
| 29 | `lemma` | [numBound_mono](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound-mono.md) | 656 | `result-track:8cad17127da3f09f09669e4413f1ff7d220a9d2a3fd63650288e4858cba0a324` |
| 30 | `lemma` | [degBound_pos](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound-pos.md) | 668 | `result-track:8523efe777d8237c49df4eac45a078759e5f56853b4d082f690aeb199b8dc0ae` |
| 31 | `lemma` | [chevalley_mvPolynomialC](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/chevalley-mvpolynomialc.md) | 676 | `result-track:46dd04fc5d9432feea5bd7ef5761d2a691529075fa14d034712cfdbf92ead1c7` |
| 32 | `def` | [numBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/numbound-source-edition-2.md) | 789 | `declaration-track:9a7f982da78ef12dfca7eab03b222d4b464b3b777f4b692e87b2911d958cd1f7` |
| 33 | `def` | [degBound](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/degbound.md) | 794 | `declaration-track:90121b02acf4463a07fb7f8ee2c09ae6e84c85097d059e90d56012cc080116fb` |
| 34 | `lemma` | [chevalley_mvPolynomial_mvPolynomial](../../../../CommutativeAlgebra/ChevalleyComplexityNamespacedPublic.lean/declarations/chevalley-mvpolynomial-mvpolynomial.md) | 809 | `result-track:918f06795f8a8eb93995825f2a92216a7a36c4fd8dfd9da58f036ff30301787b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03ff96337fe5c1145e6f2b32ee34afa5c61ddf721db5189f33081df29cb7fae4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ChevalleyComplexity/Variant8a5c6470d14098f15d42242ef4503678205cf3873a6467fc77c868effc68212a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
