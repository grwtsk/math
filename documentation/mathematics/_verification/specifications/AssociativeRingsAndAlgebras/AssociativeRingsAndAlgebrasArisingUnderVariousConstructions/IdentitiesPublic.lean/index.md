# Verification target: Identities Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9c5d96e3feb091df80bd02785452e5ac05ed2cb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9c5d96e3feb091df80bd02785452e5ac05ed2cb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean.json)

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
| 1 | `def` | [powAddExpansion](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/powaddexpansion.md) | 39 | `declaration-track:ec32e911a6b205bd7735a267a6f0bf9aa2ed4576597a8e4a47ee556054b3fb96` |
| 2 | `def` | [polyBinomAux1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/polybinomaux1.md) | 56 | `declaration-track:ad50b70bd6694571cbb538492f3d711a288efc46993602d40527ea915fcce142` |
| 3 | `theorem` | [poly_binom_aux2](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/poly-binom-aux2.md) | 62 | `result-track:8c567fc1582ae5cd73622b88b1cfe80f738def834fac0a31f9150555d46bb3b1` |
| 4 | `theorem` | [poly_binom_aux3](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/poly-binom-aux3.md) | 69 | `result-track:dd5b20e6f217418fb004e7ab0492bf99499b5b7feac8bf892241495a52075acb` |
| 5 | `def` | [binomExpansion](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/binomexpansion.md) | 82 | `declaration-track:5fd1b9878e3cb18c758bb6de2d5b9640bf65aefa72d3ec04db02a2abc3a7e262` |
| 6 | `def` | [powSubPowFactor](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/powsubpowfactor.md) | 94 | `declaration-track:cdfc2978efa3a6fc4fd49c384255883646c796034dcfbf77819345dec7a7633b` |
| 7 | `def` | [evalSubFactor](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/IdentitiesPublic.lean/declarations/evalsubfactor.md) | 105 | `declaration-track:558ba14e19f01dc3a6bcaabb0345a2b75153e2fe4ee1234d4b81a24b992b989f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4a30bef0ec591d358adf0739e8f0f0151eb782100afa1d1defd6546359a0094 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Identities/Variantf845bee5dddb5e590c4918614d8a7eecf949fd069de3d5563d2db243a88bc630.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
