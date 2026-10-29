# Verification target: Real Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8612aed87f06a7b30990a34e071161cded40d4d8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta24c516fbfad24916fb2ad80d17a6f79eabf9703f3b00a055085cd595aa4aeb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RealLemmasNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/RealLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8612aed87f06a7b30990a34e071161cded40d4d8`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Varianta24c516fbfad24916fb2ad80d17a6f79eabf9703f3b00a055085cd595aa4aeb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Varianta24c516fbfad24916fb2ad80d17a6f79eabf9703f3b00a055085cd595aa4aeb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Periodic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-istopologicalbasis-ioo-rat.md) | 34 | `result-track:2fdf2a3052f3dc83b6d4abc6e25fe69dfed4bbeb360b870a899231c5fe5d44ea` |
| 2 | `theorem` | [Real.cobounded_eq](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-cobounded-eq.md) | 47 | `result-track:299226f4d8f1e57cf1954c3d0d94e6bc1420881f18e1ee4cca8e0180a0154a49` |
| 3 | `theorem` | [Real.mem_closure_iff](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-mem-closure-iff.md) | 56 | `result-track:20e3bafaa967a938f829f8ce86f85809b1e596f667dd2fef8c51cc6a6306545a` |
| 4 | `theorem` | [Real.uniformContinuous_inv](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-uniformcontinuous-inv.md) | 60 | `result-track:f193f7c611d97539aaa7475f6ba5c8b616e2c4903680aa5f08213fd1c807a7a1` |
| 5 | `theorem` | [Real.uniformContinuous_abs](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-uniformcontinuous-abs.md) | 66 | `result-track:7874b3c54d956d9b039901df1871e97e040d97f58f622dd58af802b564652bcc` |
| 6 | `theorem` | [Real.continuous_inv](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-continuous-inv.md) | 70 | `result-track:eaabb327d118758765d6df123d6f03f843fc0eabf0570319cc811bc3bff42f7a` |
| 7 | `theorem` | [Real.uniformContinuous_mul](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-uniformcontinuous-mul.md) | 73 | `result-track:a1133540084001189a2caee57b9ab9348fe64a6c5cdcde1a1d8581fd8262004a` |
| 8 | `theorem` | [Real.totallyBounded_ball](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-totallybounded-ball.md) | 82 | `result-track:e262b6639933228b95dd4e598b60a3edd888bb82359812692d1e75fccda1be4a` |
| 9 | `theorem` | [Real.subfield_eq_of_closed](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-subfield-eq-of-closed.md) | 85 | `result-track:a13adae7878427c0faa8cb213cd28b47f89428714fc190978654d858541a65fe` |
| 10 | `theorem` | [Real.exists_seq_rat_strictMono_tendsto](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-exists-seq-rat-strictmono-tendsto.md) | 91 | `result-track:c9631a73c62ab0153f957b095ea7becc824448afa7fa701b0cb47250f82723f4` |
| 11 | `theorem` | [Real.exists_seq_rat_strictAnti_tendsto](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/real-exists-seq-rat-strictanti-tendsto.md) | 95 | `result-track:898e18b3a95627354498f58c550588bf8e08286ee567484bd685dcea54ae0b34` |
| 12 | `theorem` | [closure_of_rat_image_lt](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/closure-of-rat-image-lt.md) | 101 | `result-track:867717176f2a848f43df1f7f020438cbbe533e71b377bdd98ef455adae575509` |
| 13 | `theorem` | [Periodic.compact_of_continuous](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/periodic-compact-of-continuous.md) | 128 | `result-track:dfef08c56da7a4744f52ee426b48aa80c02ab34c27f5e9425db916713415f833` |
| 14 | `theorem` | [Periodic.isBounded_of_continuous](../../../../GeneralTopology/RealLemmasNamespaced.lean/declarations/periodic-isbounded-of-continuous.md) | 134 | `result-track:b585fccae9457887cfe7dc030770796e23b0fe925ac3939a67ee0179fc03db70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71c8c7a2168275873d604c0478f23f3ea5d3a5a4d1b0807d5fb5cfb8d71b4e0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Varianta24c516fbfad24916fb2ad80d17a6f79eabf9703f3b00a055085cd595aa4aeb3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lemmas/Varianta24c516fbfad24916fb2ad80d17a6f79eabf9703f3b00a055085cd595aa4aeb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
