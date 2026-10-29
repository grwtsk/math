# Complete source: GRWTSK.Topology.MetricTopology.ErrorTransform.Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d2d81f0377b870b5bffad6ff55eb643f2f20731` · SHA-256 `9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.ControlledMap

/-!
# Affine error monoid

The carrier-forgetting projection retains exactly the affine recurrence
`e ↦ L e + ε` and preserves typed composition.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

abbrev ErrorFactor := Mathematics.Attention.ErrorFactor
abbrev ErrorTransform := Mathematics.Attention.ErrorTransform

namespace ErrorTransform

def identity : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.id

def comp (later earlier : ErrorTransform) : ErrorTransform :=
  Mathematics.Attention.ErrorTransform.comp later earlier

theorem comp_assoc (third second first : ErrorTransform) :
    comp (comp third second) first =
      comp third (comp second first) :=
  Mathematics.Attention.ErrorTransform.comp_assoc third second first

end ErrorTransform

namespace ControlledMap

def toErrorTransform
    {X Y : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y) :
    ErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform controlled

theorem toErrorTransform_comp
    {X Y Z : Type*}
    [PseudoMetricSpace X] [PseudoMetricSpace Y] [PseudoMetricSpace Z]
    (later : ControlledMap Y Z)
    (earlier : ControlledMap X Y) :
    (comp later earlier).toErrorTransform =
      ErrorTransform.comp
        later.toErrorTransform earlier.toErrorTransform :=
  Mathematics.Attention.ControlledApproximation.toErrorTransform_comp
    later earlier

end ControlledMap

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae86728413a771584067758eedf6a2cbfbb5176e5d7dc42f072ce3e26b38c57d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/ErrorTransform/Variant9e85c27f7831484b2d87caabe15674790a3bd2bb79f2daa8510702b9b392af6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
