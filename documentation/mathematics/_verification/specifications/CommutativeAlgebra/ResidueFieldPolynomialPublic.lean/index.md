# Verification target: Residue Field Polynomial Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c602b8dc31f29da6708335b6051df78418dd2c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c602b8dc31f29da6708335b6051df78418dd2c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.lean.json)

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
| 1 | `def` | [residueFieldMapCAlgEquiv](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/residuefieldmapcalgequiv.md) | 35 | `declaration-track:77687a43e47453c1fa9cf8a3a0010b85e3c0fd25d2298fbf626049f513dedfa8` |
| 2 | `lemma` | [residueFieldMapCAlgEquiv_algebraMap](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/residuefieldmapcalgequiv-algebramap.md) | 84 | `result-track:fee1def6139ca426f20582ac95f0d2c93c633b13475a6cdfb03a9988ceee4b9a` |
| 3 | `lemma` | [residueFieldMapCAlgEquiv_symm_C](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/residuefieldmapcalgequiv-symm-c.md) | 90 | `result-track:d73b280729b14523a2443e7fafe25bb6804ab187a09ae221dc1cc409f391ac99` |
| 4 | `lemma` | [residueFieldMapCAlgEquiv_symm_X](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/residuefieldmapcalgequiv-symm-x.md) | 95 | `result-track:a71bf6a36a8bd29ba32c7b6d2b39eeceed8948a933333bae4d583e57d27c8bb5` |
| 5 | `def` | [fiberEquivQuotient](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/fiberequivquotient.md) | 102 | `declaration-track:f4da4fe0f8ce36107451bea70b0ff8f53570df52f72a5a4a012d7d75e39e6709` |
| 6 | `lemma` | [fiberEquivQuotient_tmul](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/fiberequivquotient-tmul.md) | 124 | `result-track:a1a481d84412fb856b0e86ce26f334cefa005672524791bac57f93ce7a74f4b6` |
| 7 | `theorem` | [_root_.Ideal.exists_mem_span_singleton_map_residueField_eq](../../../../CommutativeAlgebra/ResidueFieldPolynomialPublic.lean/declarations/root-ideal-exists-mem-span-singleton-map-residuefield-eq.md) | 131 | `result-track:b109d450a892f5dbc85f249c49289123c1a2148d0bc053d74de1b679d58347b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fecfe34b2bdfbaadfde3fb76cc27216d5307e17204f21189ed28e443daac319 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variant8c544a69721ba721ce10dbe7335a1cba5bd3c1e7d37092d277abb9c50317bc9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
