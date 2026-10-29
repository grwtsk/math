# Verification target: Sl2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f2a64a17d389df037e316b7778f9354a5033944",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sl2/Variant277914c2f4fdc992264add68c692189efc97ab3c89e85da383afc612f5996467.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f2a64a17d389df037e316b7778f9354a5033944`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sl2/Variant277914c2f4fdc992264add68c692189efc97ab3c89e85da383afc612f5996467.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sl2/Variant277914c2f4fdc992264add68c692189efc97ab3c89e85da383afc612f5996467.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSl2Triple](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/issl2triple.md) | 36 | `declaration-track:3f6d7d7a7d54a1f9f14ecf04889858ab2709083a04a95025d454055702adebd0` |
| 2 | `lemma` | [symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/symm.md) | 47 | `result-track:93270a0580573faa6c3ee663136ddd8026a41f61fb6c12937e285d54310df8da` |
| 3 | `lemma` | [symm_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/symm-iff.md) | 53 | `result-track:16ef7cca6dfad0df91be7eaf9dc94a707b1ce32e609314d9da3a7e97d0ce6de0` |
| 4 | `lemma` | [lie_h_e_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/lie-h-e-smul.md) | 56 | `result-track:bfd10f4e5962c792454c7b7d6d784f4e36ed040bf5e97707484e5e3a6b94979b` |
| 5 | `lemma` | [lie_lie_smul_f](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/lie-lie-smul-f.md) | 59 | `result-track:199ee486002939418afaa404b483d868d26383b08ac3dced6781f5081bb9af03` |
| 6 | `lemma` | [e_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/e-ne-zero.md) | 62 | `result-track:3d4a99bc368629b24737d168fdbff0ce6c4c1f7f2334461f6ff7dd62d1f26cc9` |
| 7 | `lemma` | [f_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/f-ne-zero.md) | 67 | `result-track:a423049d266543971de6e1887755c41bac9a40a8cfe74589f52d8bc236f12b89` |
| 8 | `structure` | [HasPrimitiveVectorWith](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/hasprimitivevectorwith.md) | 77 | `declaration-track:dafcb77eb60056d1ebd45ce9addfeb5f07255eac732200a7938072c20598adad` |
| 9 | `lemma` | [HasPrimitiveVectorWith.mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/hasprimitivevectorwith-mk.md) | 84 | `result-track:2511ecf5148f0aec774df6b7c2f4c7e5bf1c3f037dbb3f7d58a0c0eb2557c39d` |
| 10 | `def` | [toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/toliesubalgebra.md) | 97 | `declaration-track:8320975b10653d7d0c562dd52910937f0b2d347ab6d69e23ca08625265b48493` |
| 11 | `lemma` | [mem_toLieSubalgebra_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/mem-toliesubalgebra-iff.md) | 134 | `result-track:efe062779e298c4b21b3866522e139ed9b288f9bddaf37dd32bb8f360fa13df1` |
| 12 | `lemma` | [lie_f_pow_toEnd_f](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/lie-f-pow-toend-f.md) | 148 | `result-track:b4f465843101250d66648a9a8ae8d97b8f32d468f17ccdb7d637aa5861fde693` |
| 13 | `lemma` | [lie_h_pow_toEnd_f](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/lie-h-pow-toend-f.md) | 155 | `result-track:1792f2167d8e418dd8dc7493c8f392c5494650e25aa5c7ac5403d31e84362bb7` |
| 14 | `lemma` | [lie_e_pow_succ_toEnd_f](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/lie-e-pow-succ-toend-f.md) | 165 | `result-track:77c5a69799baf1c9bd4bd24572b742200e0f015e5aea97983265e4996c6b29e1` |
| 15 | `lemma` | [exists_nat](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/exists-nat.md) | 181 | `result-track:1911a55c9f84edeaae6018bfec9515f03d18f3b059c0df5d72823de787258ca2` |
| 16 | `lemma` | [pow_toEnd_f_ne_zero_of_eq_nat](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/pow-toend-f-ne-zero-of-eq-nat.md) | 198 | `result-track:dd272103b9a00ca27ee9d2955d1340ceb89d7eb01a1cf8459d7cb13d746e0b14` |
| 17 | `lemma` | [pow_toEnd_f_eq_zero_of_eq_nat](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Sl2.lean/declarations/pow-toend-f-eq-zero-of-eq-nat.md) | 213 | `result-track:b2c4b4af521dc00bacfe19812dc6fd85e9576084cc107c8c60d018adb3a6782f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3ed787729d00105c7ed4f443d15f818882e57df43445bae85809bf9446ff3b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Sl2/Variant277914c2f4fdc992264add68c692189efc97ab3c89e85da383afc612f5996467.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Sl2/Variant277914c2f4fdc992264add68c692189efc97ab3c89e85da383afc612f5996467.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
