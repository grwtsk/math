# Verification target: Power Series Catalan Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a792b575efdaeb0188e4041c422a3b21a30c351",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant6b4a7c8d5d8aea4d70fea12ee829a6bc3a21d20ea1ce81c389a384c925db0f8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a792b575efdaeb0188e4041c422a3b21a30c351`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant6b4a7c8d5d8aea4d70fea12ee829a6bc3a21d20ea1ce81c389a384c925db0f8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant6b4a7c8d5d8aea4d70fea12ee829a6bc3a21d20ea1ce81c389a384c925db0f8b.lean.json)

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
| 1 | `def` | [catalanSeries](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/declarations/catalanseries.md) | 36 | `declaration-track:e8f6363ab0c101f131aa2b22545810ce6e7bcd0e6df99db84dc23ec4578dd846` |
| 2 | `lemma` | [catalanSeries_coeff](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/declarations/catalanseries-coeff.md) | 39 | `result-track:9d15b8c01551af3e4d6b2942198559670cfe7d7d2f9d0104e4e4abe2026115b1` |
| 3 | `lemma` | [catalanSeries_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/declarations/catalanseries-constantcoeff.md) | 43 | `result-track:5fb903b804d87e60a4256dee3f9de7647f6bf5cc33ff57274ba6d6df91ad0763` |
| 4 | `theorem` | [catalanSeries_sq_mul_X_add_one](../../../../CommutativeAlgebra/PowerSeriesCatalanPublic.lean/declarations/catalanseries-sq-mul-x-add-one.md) | 47 | `result-track:2a855a43c654c83df34587a109c328f0918c423e5693b478b0921eb0a8242014` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87aea004b3b116535ce9ba59563918a1dd837f3aff7214fb8de5e50747e95a16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant6b4a7c8d5d8aea4d70fea12ee829a6bc3a21d20ea1ce81c389a384c925db0f8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant6b4a7c8d5d8aea4d70fea12ee829a6bc3a21d20ea1ce81c389a384c925db0f8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
