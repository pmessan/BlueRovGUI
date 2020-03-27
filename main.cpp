#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQuickView view;
        view.engine()->addImportPath("qrc:/uiFiles/imports");
        view.setSource(QUrl("qrc:/uiFiles/Screen01.ui.qml"));
        if (!view.errors().isEmpty())
            return -1;
        view.show();

    return app.exec();
}
