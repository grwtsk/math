import Color.Scatter

namespace Color

structure ScatterEdge where
  sourceNamespace : String
  targetNamespace : String
  reason : String
deriving Repr, DecidableEq

structure ScatterGraph where
  rootNamespace : String
  edges : List ScatterEdge
deriving Repr, DecidableEq

def colorGraph : ScatterGraph :=
  { rootNamespace := "Color",
    edges := [
      { sourceNamespace := "Color", targetNamespace := "Color.Red", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Green", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Blue", reason := "primary" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedGreen", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.RedBlue", reason := "symmetric_mix" },
      { sourceNamespace := "Color", targetNamespace := "Color.Mix.GreenBlue", reason := "symmetric_mix" }
    ] }

theorem colorGraph_root : colorGraph.rootNamespace = "Color" := rfl

end Color
