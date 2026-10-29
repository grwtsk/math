# Verification target: Source Peano Boundary Atoms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c08a96d058100353c90c7f2c7c73d9e9fc846118",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant49a53265019d27345e685695c6f7bc566002986e6d7537d8bf2139baa6105550.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c08a96d058100353c90c7f2c7c73d9e9fc846118`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant49a53265019d27345e685695c6f7bc566002986e6d7537d8bf2139baa6105550.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant49a53265019d27345e685695c6f7bc566002986e6d7537d8bf2139baa6105550.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [peanoScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/peanoscale.md) | 34 | `declaration-track:8a3c8981a942de867b80e2c2bf18135dc29c73474e405862afa959857a22384f` |
| 2 | `def` | [boundaryPeano](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarypeano.md) | 37 | `declaration-track:166a2e4863165818fe4fee3c135e7ce618bbe1bbeba4bae522557df45853d174` |
| 3 | `def` | [boundaryKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarykernel.md) | 41 | `declaration-track:2bf7d8d7d9c45d63a0418da6fda1226f9e455bd76809b62e577a963173fd16fe` |
| 4 | `theorem` | [boundaryPeano_contDiff_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarypeano-contdiff-two.md) | 45 | `result-track:abfd99bc19b1d4ee9d8ed76dddf501ebc70e06f509de545f240c2343698e465a` |
| 5 | `theorem` | [boundaryPeano_second_deriv_eq_scaled](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarypeano-second-deriv-eq-scaled.md) | 51 | `result-track:26bc9b548972ae2917b3da73689f7dc6fb2a20387cec63bfc0dd1f8989852429` |
| 6 | `theorem` | [boundaryPeano_second_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarypeano-second-deriv.md) | 71 | `result-track:3e15176caecfb4e3585c5f80b41e815134c247656eb7e8812c682f7f03f7a42e` |
| 7 | `theorem` | [boundaryPeano_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/boundarypeano-nonneg.md) | 85 | `result-track:a817d7c1d0f8b8da72e70bb1e5350247e6d478e1bc8cfdf83004dfcc20e52bf5` |
| 8 | `theorem` | [peanoScale_mul_closedPrimeMoment_eq_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/peanoscale-mul-closedprimemoment-eq-atoms.md) | 93 | `result-track:37822a022d296a8e18915b2712732422090579efb29349aa2466ce1dd4767af2` |
| 9 | `theorem` | [peanoScale_mul_mertensResidual_eq_atoms](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePeanoBoundaryAtoms.lean/declarations/peanoscale-mul-mertensresidual-eq-atoms.md) | 108 | `result-track:cdf438906fe3fb7adfda267dd95f52b5a3ad23e4c70e4757824350264a0185bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ab6de22b0cac5d6603ab18a654dfc1a59461a22d223f63c22557ad6823091a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant49a53265019d27345e685695c6f7bc566002986e6d7537d8bf2139baa6105550.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoBoundaryAtoms/Variant49a53265019d27345e685695c6f7bc566002986e6d7537d8bf2139baa6105550.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
