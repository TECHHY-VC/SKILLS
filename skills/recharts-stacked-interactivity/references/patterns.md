# Interactive Recharts Patterns

## Shared series metadata

Keep all bucket definitions in one array and derive legends, areas, tooltips, and tables from it.

```js
const BUCKETS = [
  { id: 'treasury', name: 'Treasury', color: '#F28B82' },
  { id: 'team', name: 'Team', color: '#FCD663' }
];
```

## Per-chart hover and hidden state

Use keyed objects when multiple charts reuse the same buckets but should respond independently.

```js
const [hoveredByChart, setHoveredByChart] = useState({
  unlock: null,
  pressure: null,
  usd: null
});

const [hiddenByChart, setHiddenByChart] = useState({
  unlock: [],
  pressure: [],
  usd: []
});
```

## Stacked tooltip order

Recharts payload order often does not match the visual top-to-bottom stack order. Reverse it before rendering and add a total row.

```js
const orderedPayload = [...payload].reverse();
const total = orderedPayload.reduce((sum, entry) => sum + entry.value, 0);
```

## Custom legend buttons

Use HTML buttons for the legend when the legend must control hover or visibility state.

```jsx
{BUCKETS.map((bucket) => (
  <button
    key={bucket.id}
    onMouseEnter={() => onHoverBucket(chartId, bucket.id)}
    onMouseLeave={() => onHoverBucket(chartId, null)}
    onClick={() => onToggleBucket(chartId, bucket.id)}
  >
    {bucket.name}
  </button>
))}
```

## Rendering visible stacked areas

Filter before rendering, but do not remove the bucket from the legend.

```js
const hiddenLookup = new Set(hiddenBucketIds);
const visibleBuckets = BUCKETS.filter((bucket) => !hiddenLookup.has(bucket.id));
```

## Pie and donut hover stability

- Set `isAnimationActive={false}` when labels flicker on hover.
- Dim non-active slices and their outside labels together.
- Avoid placing pointer-intercepting text in the donut center unless that interaction is intentional.

## Verification checklist

1. Hovering a legend item highlights the corresponding series on the chart.
2. Clicking a legend item hides the series, and clicking again restores it.
3. Tooltip series order matches the visual stack order.
4. Tooltip includes a `Total` row.
5. Mobile layout keeps labels and legend readable.
