#ifndef DOT_H
#define DOT_H

#include "def.h"

#include <QObject>
#include <QPointF>
#include <QPen>
#include <QBrush>
#include <QColor>
#include <QVector>
#include <QDebug>
#include <QGraphicsRectItem>
#include <QGraphicsScene>
#include <QSet>

#include "dashboard.h"

class Dot : public QGraphicsRectItem
{

public:
    explicit Dot();
    explicit Dot(QPointF coordinat,QColor color = Qt::gray);
signals:

public slots:

};

class PowerPellet : public Dot{
public:
    explicit PowerPellet();
    explicit PowerPellet(QPointF coordinate);
};

class DotManager : public QObject
{
    Q_OBJECT
public:
    explicit DotManager(QGraphicsScene * scene,QVector<QVector<bool> > maze,DashBoard * dashBoard,QObject * parent = nullptr);
    void deployTheDots(QPoint = QPoint(1,1));
    void deleteTheDot(QPoint p);
    void deleteTheDot(int x,int y);
    QVector<QVector<Dot*> >Dots();
    QVector<QPointF>Nodes();
signals:
    void eatDot();
    void eatPowerPellet();
public slots:
    void eatenDot(QPoint);
    void eatenPowerPellet(QPoint);
private:
    QGraphicsScene * scene;
    QVector<QVector<bool> > maze;
    QVector<QVector<Dot*> > dots;
    QVector<QPointF> nodes;
private:
};

#endif // DOT_H
