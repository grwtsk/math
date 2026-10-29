# Verification target: Vertices Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015fce1be0e0cbd8303ad4a73330b33eda579435",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015fce1be0e0cbd8303ad4a73330b33eda579435`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [«end»](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/end.md) | 37 | `declaration-track:1c380392be75bdb5029f10ee26735a9534e289d1a950958fb899aa2312bdd9de` |
| 2 | `lemma` | [end_cons](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/end-cons.md) | 41 | `result-track:1e379143d8213bcc91a23b829a2935f8de6ae832a461574b97f17f6a5f913009` |
| 3 | `def` | [vertices](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices.md) | 44 | `declaration-track:ca26c04a6d068c9c9f12ef9555c799916accfe16bb37e407a4608648a6e2bc4f` |
| 4 | `lemma` | [vertices_nil](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-nil.md) | 49 | `result-track:15ec53edd4e5b373cea2db905275e1df983bbb477f8390c0e85bab47913d0466` |
| 5 | `lemma` | [vertices_cons](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-cons.md) | 52 | `result-track:3c67140959f354da85f0c029fdbf9815f081b900f5b316a916cacd8fe4e7860a` |
| 6 | `lemma` | [mem_vertices_cons](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/mem-vertices-cons.md) | 56 | `result-track:369a5b30d43f1ca1641c138b17c4732743dfc2918c8898bdaea877cea5c4c5af` |
| 7 | `lemma` | [verticesSet_nil](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/verticesset-nil.md) | 62 | `result-track:5dfcadc0bb92e18a8e38ff7fd50698a1fde9fdceaa567327b7343a273cb8e1c9` |
| 8 | `lemma` | [vertices_length](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-length.md) | 68 | `result-track:5a3cd85f3698451d59397e1529bc5fcb5bbc8bd6710387cc7053908d3d2198fa` |
| 9 | `lemma` | [length_vertices_pos](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/length-vertices-pos.md) | 75 | `result-track:a0c6cfd88ba24fab467a63b661f794a55e6191cc83e3972fa6359890d2d064c4` |
| 10 | `lemma` | [vertices_ne_nil](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-ne-nil.md) | 78 | `result-track:b396b298b2dc7e0d2fa718219808c9a3d52064c731766c33fb70698c8c0aec5d` |
| 11 | `lemma` | [start_mem_vertices](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/start-mem-vertices.md) | 81 | `result-track:62c0a3366ccb9be7923e7cdb152489867e3698aad9640f8f0ad5ea019c8f76f2` |
| 12 | `lemma` | [vertices_head?](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-head.md) | 88 | `result-track:00288e31a820ce36aa34767b21154a47d4da835014cbf227ec29cd4dcdb86a9f` |
| 13 | `lemma` | [vertices_head_eq](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-head-eq.md) | 95 | `result-track:61213763d318b459590e9f5d8365b8b95b50d64110d32ef6e193e5358449134d` |
| 14 | `lemma` | [getElem_vertices_zero](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/getelem-vertices-zero.md) | 102 | `result-track:5b4c7e0776f85f0755765bd30abb5667afedfbe6b890a9dbe1e94caedcad3250` |
| 15 | `lemma` | [vertices_getLast](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-getlast.md) | 108 | `result-track:071517a659970405ce1398ea2cee33340959224defc994927c0e9bb3b00205fb` |
| 16 | `lemma` | [dropLast_append_end_eq](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/droplast-append-end-eq.md) | 115 | `result-track:59a4376287be8fe614768108efa284125efeb7694d7f8cca4426da87012f43d2` |
| 17 | `lemma` | [vertices_comp](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-comp.md) | 120 | `result-track:cdb63edc3efabc51407ae7d4026ae34e2de16b3dd58fb8d5e96339142376c656` |
| 18 | `lemma` | [length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/length-eq-zero-iff.md) | 126 | `result-track:87cbacab6f51797a2f6eff6cbd89547ae2f74ae7ccd63f1c5b9e638d3b319aa9` |
| 19 | `lemma` | [vertices_comp_get_length_eq](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-comp-get-length-eq.md) | 130 | `result-track:005294bae3a6cab0f9fd5c4b7995b8e1241d1d9573bf2b3bca9e052b7a8e6a70` |
| 20 | `lemma` | [vertices_toPath](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-topath.md) | 136 | `result-track:d0d0c532ff8d47bde80380597ec19fbbd3425875b709d49273b348aa740776c7` |
| 21 | `lemma` | [vertices_toPath_tail](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/vertices-topath-tail.md) | 141 | `result-track:253e32531868ef4340f3458766e9c3158086cd5c3c6f0c1f17adcb63d1402d18` |
| 22 | `lemma` | [nil_of_comp_eq_nil_left](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/nil-of-comp-eq-nil-left.md) | 147 | `result-track:aa5197b111c26229aaa33235176f6aa3b5fc535cfde63e0339298a86867665f1` |
| 23 | `lemma` | [nil_of_comp_eq_nil_right](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/nil-of-comp-eq-nil-right.md) | 156 | `result-track:9944423093871d88bfc452df50a579c9fd25e248e7d85caf36417d245f3fe510` |
| 24 | `lemma` | [comp_eq_nil_iff](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/comp-eq-nil-iff.md) | 164 | `result-track:543475f2b5b15b3bc866249f6be7d51d18a22d2fb953b7f4701650642a5ad063` |
| 25 | `lemma` | [end_mem_vertices](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/end-mem-vertices.md) | 172 | `result-track:2a46914a9a529c077adde1ebb77c1d65fc43bf8ad5ba5c6d27da509036d06be0` |
| 26 | `theorem` | [exists_eq_comp_of_le_length](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/exists-eq-comp-of-le-length.md) | 187 | `result-track:5d3b2ca394820f3e824bcbe56ad1c54c6367190f889118fc09259ecc0f2ecf80` |
| 27 | `theorem` | [exists_eq_comp_and_length_eq_of_lt_length](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/exists-eq-comp-and-length-eq-of-lt-length.md) | 203 | `result-track:e2207c97135dcad0573351d12f662caa125c31402b15de6846e86f69d0463162` |
| 28 | `theorem` | [exists_eq_comp_of_mem_vertices](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/exists-eq-comp-of-mem-vertices.md) | 214 | `result-track:17b2359a55a9e0b57b67be6cf4fc257b4ab3435fbe57417a8e82951581b7f81b` |
| 29 | `theorem` | [exists_eq_comp_and_notMem_tail_of_mem_vertices](../../../../../Combinatorics/GraphTheory/VerticesNamespacedPublic.lean/declarations/exists-eq-comp-and-notmem-tail-of-mem-vertices.md) | 222 | `result-track:c3e1d499510abebb0fabd4a8760536ecaaff4a5048c61ee9908c9fe076965e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7b23701a16d92670f36f46b57b0ea558333d0af99d9ab4e79d17bdac16cb60c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertices/Varianta6e27be71f18c2aaa1ee2bf70ab4072f811c9aabb35ed068b4c212bc6800b706.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
