# Verification target: Alternating Maximal Subgroups Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8a8d377fd703de2e88b733fc1ec376a693e1fae",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8a8d377fd703de2e88b733fc1ec376a693e1fae`.

Source path: `GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean.json)

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
| 1 | `theorem` | [exists_mem_stabilizer_isThreeCycle_of_two_lt_ncard](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/exists-mem-stabilizer-isthreecycle-of-two-lt-ncard.md) | 49 | `result-track:beb7e602e94243ee40f48e053b44f0d96fdc0415896d2b637e5812a2bc209f4a` |
| 2 | `theorem` | [exists_mem_stabilizer_isThreeCycle](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/exists-mem-stabilizer-isthreecycle.md) | 59 | `result-track:b8d0de2dd553316dd86a88f9d9040bb74d1f029d24f954d7d92c2d033450e21a` |
| 3 | `theorem` | [alternatingGroup_le_of_isPreprimitive](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/alternatinggroup-le-of-ispreprimitive.md) | 68 | `result-track:f9c9a758fc9002d9a71ef23b6ddc9c75194360b3534c8631478598c3babdfc8d` |
| 4 | `theorem` | [stabilizer.surjective_toPerm](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/stabilizer-surjective-toperm.md) | 82 | `result-track:33c76af24f21a00fab18d423482861cd0c9bc2469649050bd92936c2e8ef178d` |
| 5 | `theorem` | [stabilizer_isPreprimitive](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/stabilizer-ispreprimitive.md) | 116 | `result-track:a4108e60500022731f8ea549aff567551f6a858616f8e6c61c357eb812148c99` |
| 6 | `theorem` | [stabilizer_subgroup_isPreprimitive](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/stabilizer-subgroup-ispreprimitive.md) | 123 | `result-track:ce38571f7af28c24dd4876957103edc64573f3dfe92cb79a2ecb1a586387ab77` |
| 7 | `theorem` | [stabilizer_ne_top](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/stabilizer-ne-top.md) | 136 | `result-track:a23a5ec3ff636d70b2f7ecc183b1dd224361caec3684ccc08d46cc86c9f3c128` |
| 8 | `theorem` | [exists_mem_stabilizer_smul_eq](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/exists-mem-stabilizer-smul-eq.md) | 149 | `result-track:d22c11ff1e7753a34b52aa71b78504188a8ae08fd3b9dbbf603f8cec494b1aff` |
| 9 | `theorem` | [subgroup_eq_top_of_isPreprimitive](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/subgroup-eq-top-of-ispreprimitive.md) | 173 | `result-track:b2361be5a09874889b184890474f8673e9783571b7537e62bae91d8ce3e70a39` |
| 10 | `theorem` | [subsingleton_of_ssubset_compl_of_stabilizer_alternatingGroup_le](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/subsingleton-of-ssubset-compl-of-stabilizer-alternatinggroup-le.md) | 196 | `result-track:922e42d15d77c109503e3aab78a2a993168d1d409cc0be8d7891b4f2c400a994` |
| 11 | `theorem` | [isCoatom_stabilizer_of_ncard_lt_ncard_compl](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/iscoatom-stabilizer-of-ncard-lt-ncard-compl.md) | 217 | `result-track:5ca25f6da94059eaada3df48435f150c7904e8715b6cdd67231277c9655269a2` |
| 12 | `theorem` | [isCoatom_stabilizer_singleton](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/iscoatom-stabilizer-singleton.md) | 278 | `result-track:ef0c0abdf620fa73a3eac3fe10abb2d83fceae2a90880257c03661248c40400c` |
| 13 | `theorem` | [isCoatom_stabilizer](../../../../GroupTheoryAndGeneralizations/AlternatingMaximalSubgroupsPublic.lean/declarations/iscoatom-stabilizer.md) | 294 | `result-track:d799408e8b95432a2a4f60c4425a27dd977bb36b41335e312c26b538bdc823be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d8c0ed5fe1f495f1e252373252361fc10f54a10fe5c4da3f3a013b43a05f1b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MaximalSubgroups/Variant9b80edc03290ef4d428e93aa5ee900cf1075a27482160134e9394a5446d466c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
