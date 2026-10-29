# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30088e30ae96987f3648b821427ded8397ec0888",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30088e30ae96987f3648b821427ded8397ec0888`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.SquaredDistance` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfTurn](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/declarations/halfturn--93b7ef53e9f2643cec2592b3.md) | 13 | `declaration-track:93b7ef53e9f2643cec2592b3e5528f22455777c47e27a527815698e560ef4d30` |
| 2 | `theorem` | [halfTurn_involutive](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/declarations/halfturn-involutive--5a8b614ecbc2988fecb97c07.md) | 16 | `result-track:5a8b614ecbc2988fecb97c072f9ecbec9d4e75b3ff52820eb968dc89332bb5b6` |
| 3 | `theorem` | [halfTurn_difference](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/declarations/halfturn-difference--8c92d32269c8da9d14376041.md) | 21 | `result-track:8c92d32269c8da9d143760415f601f93084912136f197d37b8831157e95fae8c` |
| 4 | `theorem` | [halfTurn_preserves_centered_squaredDistance](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean/declarations/halfturn-preserves-centered-squareddistance--5ecac533d46375540ee27eb1.md) | 27 | `result-track:5ecac533d46375540ee27eb1404cbbb2c5c057b3e0fd520869c527eeb273c111` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2d06e02d42e2812179a7f7c65778869d4274320c03947a74e47bc97595047e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
