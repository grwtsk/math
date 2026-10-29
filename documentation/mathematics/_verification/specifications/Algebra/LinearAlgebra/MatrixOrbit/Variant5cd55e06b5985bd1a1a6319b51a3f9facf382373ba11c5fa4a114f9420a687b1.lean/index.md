# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixOrbit.Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1506993d827abd3de61a535c711ef34c284b13f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1506993d827abd3de61a535c711ef34c284b13f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.MatrixSymmetry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InSameOrbit](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/declarations/insameorbit--0c18fade413fdec9e3a7a99d.md) | 18 | `declaration-track:0c18fade413fdec9e3a7a99d54fb133c8818b9d2b8b160f31a84566867f5f95a` |
| 2 | `structure` | [OrbitCanonicalizer](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/declarations/orbitcanonicalizer--448a23d566fddd308254f816.md) | 23 | `declaration-track:448a23d566fddd308254f816ef7d8a9fa41a2296a9227c40de9b94fec0f2fabc` |
| 3 | `def` | [copyCanonicalizer](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/declarations/copycanonicalizer--805355ce08c14b0580cf361e.md) | 31 | `declaration-track:805355ce08c14b0580cf361e18d942416e340d065350571431edced372f31bd1` |
| 4 | `theorem` | [orbitCanonicalizer_reconstruct](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/declarations/orbitcanonicalizer-reconstruct--5c08d7f5aa714018be28a3fa.md) | 39 | `result-track:5c08d7f5aa714018be28a3fa5bc3f981afeb66e603086a40258470856faa05c3` |
| 5 | `theorem` | [copyCanonicalizer_reconstruct](../../../../../../Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean/declarations/copycanonicalizer-reconstruct--f4c320cdef8763161d9f6b9b.md) | 46 | `result-track:f4c320cdef8763161d9f6b9b8ecf1978ad670ce7809a52abc90993e88ed8eaae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c48f9d18080b0b8afbeeac3642510497b5e1f872a5991de5ee21355fcfb540af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixOrbit/Variant5cd55e06b5985bd1a1a6319b51a3f9facf382373ba11c5fa4a114f9420a687b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
